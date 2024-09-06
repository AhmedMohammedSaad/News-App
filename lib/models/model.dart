class Articles {
  String? title;
  String? urlToImage;
  String? content;
  Articles({
    required this.title,
    required this.urlToImage,
    required this.content,
  });

  factory Articles.fromJason(Map<String, dynamic> JasonData) {
    return Articles(
      title: JasonData["title"],
      urlToImage: JasonData["urlToImage"],
      content: JasonData["content"],
    );
  }
}
