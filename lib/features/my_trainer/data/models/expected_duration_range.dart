class ExpectedDurationRange {
  ExpectedDurationRange({
    required this.min,
    required this.max,
  });

  final int? min;
  final int? max;

  factory ExpectedDurationRange.fromJson(Map<String, dynamic> json){
    return ExpectedDurationRange(
      min: json["min"],
      max: json["max"],
    );
  }

  Map<String, dynamic> toJson() => {
    "min": min,
    "max": max,
  };

}
