import 'package:flutter/material.dart';
import 'package:rest_api_call/pages/home_page.dart';

void main() {
  runApp(const MyApiApp());
}

class MyApiApp extends StatelessWidget {
  const MyApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
