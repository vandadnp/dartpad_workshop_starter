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
              /*
              As you can see, the Text above is displaying the contents
              of the `title` property of this state object. What you need
              to do in this code is to, upon the user tapping this button,
              change the `title` property to the current date and time
              and ask the state object to redraw its contents
              */
            },
            child: const Text('Display current time'),
          )
        ]),
      ),
    );
  }
}
