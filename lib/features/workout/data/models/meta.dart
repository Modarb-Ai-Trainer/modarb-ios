class Meta {
  Meta({
    required this.total,
    required this.page,
    required this.perPage,
  });

  final int? total;
  final int? page;
  final int? perPage;

  factory Meta.fromJson(Map<String, dynamic> json){
    return Meta(
      total: json["total"],
      page: json["page"],
      perPage: json["perPage"],
    );
  }

  Map<String, dynamic> toJson() => {
    "total": total,
    "page": page,
    "perPage": perPage,
  };

}
