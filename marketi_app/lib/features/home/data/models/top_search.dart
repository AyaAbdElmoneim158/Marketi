class TopSearch {
  final String id;
  final String data;
  final int number;
  final int v;

  TopSearch({
    required this.id,
    required this.data,
    required this.number,
    required this.v,
  });

  factory TopSearch.fromJson(Map<String, dynamic> json) {
    return TopSearch(
      id: json['_id'],
      data: json['data'],
      number: json['number'],
      v: json['__v'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'data': data,
      'number': number,
      '__v': v,
    };
  }
}
