class Users {
  String id;
  final int age;
  final int weight;
  final int height;

  Users({
    this.id = '',
    required this.age,
    required this.weight,
    required this.height,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'age': age, 'weight': weight, 'height': height};

  static Users fromJson(Map<String, dynamic> json) => Users(
      id: json['id'],
      age: json['age'],
      weight: json['weight'],
      height: json['height']);
}
