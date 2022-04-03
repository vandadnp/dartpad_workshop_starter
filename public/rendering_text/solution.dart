import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Hello, world!',
        style: TextStyle(
          fontSize: 30.0,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
