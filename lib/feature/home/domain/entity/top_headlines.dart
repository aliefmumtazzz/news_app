class TopHeadlines {
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? content;

  const TopHeadlines(
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
  );
}

class Source {
  final String? name;

  const Source(this.name);
}
