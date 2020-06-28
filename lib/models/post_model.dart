class Post {
  final String title;
  final String content;
  final String thumbnailUrl;
  final String url;
  final String name;

  Post({this.title, this.content, this.thumbnailUrl, this.url, this.name});

  factory Post.fromJson(Map<String, dynamic> json) {
    print(json);
    return Post(
      title: json['data']['title'] as String,
      content: json['data']['content'] as String,
    );
  }
}