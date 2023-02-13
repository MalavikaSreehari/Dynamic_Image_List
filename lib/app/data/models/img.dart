class Img {
  final String title, url, thumbnailUrl;
  final int id, albumId;

  Img({
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.id,
    required this.albumId,
  });

  factory Img.fromJson(Map<String, dynamic> json) {
    return Img(
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
      id: json['id'],
      albumId: json['albumId'],
    );
  }
}