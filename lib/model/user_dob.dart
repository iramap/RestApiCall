// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserDob {
  final DateTime date;
  final int age;
  UserDob({
    required this.date,
    required this.age,
  });

  factory UserDob.fromMap(Map<String, dynamic> json) {
    return UserDob(
      date: DateTime.parse(json["date"]),
      age: json["age"],
    );
  }
}
