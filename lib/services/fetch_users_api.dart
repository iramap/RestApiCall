import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rest_api_call/model/users.dart';

class FetchUsersApi {
  static Future<List<Users>> fetchUsers() async {
    const url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json["results"] as List<dynamic>;
    final users = results.map((e) {
      return Users.fromMap(e);
    }).toList();
    return users;
  }
}
