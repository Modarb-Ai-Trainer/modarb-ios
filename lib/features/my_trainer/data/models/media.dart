class Media {
  Media({
    required this.type,
    required this.url,
  });

  final String? type;
  final String? url;

  factory Media.fromJson(Map<String, dynamic> json){
    return Media(
      type: json["type"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
    "type": type,
    "url": url,
  };

}
