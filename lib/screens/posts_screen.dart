import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ecohint/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

List<Post> parsePosts(String responseBody) {
  /*final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Post>((json) => Post.fromJson(json));*/

  List list = json.decode(responseBody)['data']['children'] as List;
  List<Post> posts = [];
  list.forEach((element) {
    posts.add(Post(
        title: element['data']['title'],
        thumbnailUrl: element['data']['thumbnail'],
        url: element['data']['url']));
  });

  return posts;
}

Future<List<Post>> fetchPosts(http.Client client, String sortBy) async {
  final response =
      await client.get('https://www.reddit.com/r/ecology/$sortBy.json');

  return compute(parsePosts, response.body);
}

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  String sortBy;

  @override
  void initState() {
    super.initState();

    sortBy = 'hot';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kIsWeb ? 500.0 : 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sort by : '),
              FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      sortBy = 'hot';
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
                      sortBy = 'new';
                    });
                  },
                  icon: Icon(Icons.fiber_new),
                  label: Text('Most recent',
                      style: TextStyle(
                          fontWeight: sortBy == 'new'
                              ? FontWeight.bold
                              : FontWeight.normal))),
              FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      sortBy = 'top';
                    });
                  },
                  icon: Icon(Icons.format_list_numbered),
                  label: Text('Top',
                      style: TextStyle(
                          fontWeight: sortBy == 'top'
                              ? FontWeight.bold
                              : FontWeight.normal))),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 8,
          child: FutureBuilder(
            future: fetchPosts(http.Client(), sortBy),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              return snapshot.hasData
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kIsWeb ? 500.0 : 10.0),
                      child: PostsList(posts: snapshot.data))
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

class PostsList extends StatelessWidget {
  final List<Post> posts;

  PostsList({Key key, this.posts}) : super(key: key);

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
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _launchInWebViewWithJavaScript(posts[index].url);
          },
          child: Card(
            child: Column(
              children: [
                posts[index].thumbnailUrl.isNotEmpty &&
                        posts[index].thumbnailUrl.length > 10
                    ? Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Image.network(
                          posts[index].thumbnailUrl,
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
                  title: Text(posts[index].title),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
