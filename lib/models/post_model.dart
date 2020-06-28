class Post {
  final String title;
  final String content;
  final String thumbnailUrl;
  final String url;

  Post({this.title, this.content, this.thumbnailUrl, this.url});

  factory Post.fromJson(Map<String, dynamic> json) {
    print(json);
    return Post(
      title: json['data']['title'] as String,
      content: json['data']['content'] as String,
    );
  }
}