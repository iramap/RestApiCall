// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rest_api_call/model/user_dob.dart';
import 'package:rest_api_call/model/user_location.dart';
import 'package:rest_api_call/model/user_name.dart';
import 'package:rest_api_call/model/user_picture.dart';

class Users {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;
  Users({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory Users.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e["name"]);
    final dob = UserDob.fromMap(e["dob"]);
    final location = UserLocation.fromMap(e["location"]);
    final picture = UserPicture.fromMap(e["picture"]);
    return Users(
        gender: e["gender"],
        email: e["email"],
        phone: e["phone"],
        cell: e["cell"],
        nat: e["nat"],
        name: name,
        dob: dob,
        location: location,
        picture: picture);
  }
  String get fullName {
    return "${name.title} ${name.first} ${name.last}";
  }
}
