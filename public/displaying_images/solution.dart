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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://bit.ly/3ywI8l6',
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Image.network(
              'https://bit.ly/3qYOtDm',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
