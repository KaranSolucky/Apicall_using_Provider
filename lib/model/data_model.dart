class DataModel {
  final int id;
  final int userId;
  final String title;

  DataModel({required this.id, required this.userId, required this.title});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json['id'], userId: json['userId'], title: json['title']);
  }
}
