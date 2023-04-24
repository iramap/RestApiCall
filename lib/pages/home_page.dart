// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rest_api_call/model/users.dart';
import 'package:rest_api_call/services/fetch_users_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Users> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REST API CALL"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          // final name = user["name"]["first"];
          // final email = user.email;
          //  final color = user.gender == "male" ? Colors.red : Colors.blue;
          // final imageUrl = user["picture"]["thumbnail"];
          return ListTile(
            // leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(100),
            //     child: Image.network(imageUrl)),
            title: Text(user.fullName),
            subtitle: Text(user.location.timezone.description),
            // textColor: color,
            // subtitle: Text(email),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: fetchUsers,
      //   child: const Icon(Icons.people_alt_outlined),
      // ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await FetchUsersApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
