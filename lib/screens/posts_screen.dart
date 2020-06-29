import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:ecohint/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:frefresh/frefresh.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_card/animated_card.dart';

List<Post> parsePosts(String responseBody) {
  /*final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Post>((json) => Post.fromJson(json));*/

  List list = json.decode(responseBody)['data']['children'] as List;
  List<Post> posts = [];
  list.forEach((element) {
    posts.add(Post(
        title: element['data']['title'],
        thumbnailUrl: element['data']['thumbnail'],
        url: element['data']['url'],
        name: element['data']['name']));
  });

  return posts;
}

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  String sortBy;
  String after;
  bool search;
  String searchKeyword;

  Future<List<Post>> fetchPosts(http.Client client, String sortBy,
      {String fullname, String keyword}) async {
    if (!search) {
      final response = await client.get(
          'https://www.reddit.com/r/plants/$sortBy.json${fullname != '' ? '?after=$fullname' : ''}');

      return compute(parsePosts, response.body);
    } else {
      final response = await client.get(
          'https://www.reddit.com/r/plants/search.json?q=$keyword&restrict_sr=on');

      return compute(parsePosts, response.body);
    }
  }

  @override
  void initState() {
    super.initState();

    sortBy = 'hot';
    search = false;
    searchKeyword = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      search = false;
                      sortBy = 'hot';
                      after = '';
                    });
                  },
                  icon: Icon(Icons.new_releases),
                  label: Text(
                    'Popular',
                    style: TextStyle(
                        fontWeight: sortBy == 'hot'
                            ? FontWeight.bold
                            : FontWeight.normal),
                  )),
              FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      search = false;
                      sortBy = 'new';
                      after = '';
                    });
                  },
                  icon: Icon(Icons.fiber_new),
                  label: Text('Most recent',
                      style: TextStyle(
                          fontWeight: sortBy == 'new'
                              ? FontWeight.bold
                              : FontWeight.normal))),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width > 1080
              ? MediaQuery.of(context).size.width / 2
              : MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Search...',
              hintText: 'Press enter to search',
              icon: Icon(Icons.search),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                setState(() {
                  searchKeyword = value;
                });
              }
            },
            onEditingComplete: () {
              setState(() {
                search = true;
              });
            },
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 8,
          child: FutureBuilder(
            future: fetchPosts(http.Client(), sortBy,
                fullname: after ?? '', keyword: searchKeyword),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width > 1080
                          ? MediaQuery.of(context).size.width / 2
                          : MediaQuery.of(context).size.width,
                      child: PostsList(this, posts: snapshot.data))
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ),
      ],
    );
  }
}

class PostsList extends StatefulWidget {
  final List<Post> posts;
  final _PostsScreenState parent;

  PostsList(this.parent, {Key key, this.posts}) : super(key: key);

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  FRefreshController controller = FRefreshController();
  ScrollController _scrollController = ScrollController();

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FRefresh(
      controller: controller,
      header: CircularProgressIndicator(),
      headerHeight: 75.0,
      footer: LinearProgressIndicator(),
      footerHeight: 20.0,
      onLoad: () {
        widget.parent.setState(() {
          widget.parent.after = widget.posts[widget.posts.length - 1].name;
        });
        controller.scrollTo(0);
        controller.finishLoad();
      },
      onRefresh: () {
        widget.parent.setState(() {
          widget.parent.after = '';
        });
        controller.finishRefresh();
      },
      child: ListView.builder(
        controller: _scrollController,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.posts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _launchInWebViewWithJavaScript(widget.posts[index].url);
            },
            child: Card(
              child: AnimatedCard(
                direction: AnimatedCardDirection.left,
                initDelay: Duration(milliseconds: 0),
                duration: Duration(milliseconds: 100),
                curve: Curves.easeInQuad,
                child: Column(
                  children: [
                    widget.posts[index].thumbnailUrl.isNotEmpty &&
                            widget.posts[index].thumbnailUrl.length > 10
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.network(
                              widget.posts[index].thumbnailUrl,
                              height: 250,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Container(
                            height: 0,
                            width: 0,
                          ),
                    ListTile(
                      contentPadding: EdgeInsets.all(20.0),
                      title: Text(widget.posts[index].title, textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
