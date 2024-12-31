import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(app());
}

Widget app() {
  return MaterialApp(
    title: "test",
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color.fromARGB(255, 0, 5, 8), const Color.fromARGB(255, 47, 51, 47)],
          ),
        ),
        child: Center(
          child: const Text('Hello, World1!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
