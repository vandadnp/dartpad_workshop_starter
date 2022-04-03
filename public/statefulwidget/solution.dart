import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Text(title),
          TextButton(
            onPressed: () {
              setState(() => title = DateTime.now().toIso8601String());
            },
            child: const Text('Display current time'),
          )
        ]),
      ),
    );
  }
}
