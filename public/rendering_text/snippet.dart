import 'package:flutter/material.dart';

void main() {
  runApp(
    // CupertinoApp?
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CupertinoPageScaffold?
    return const Scaffold(
      body: Text(
        'Hello, world!',
        style: TextStyle(
          fontSize: 30.0,
          /*
          The `TextStyle` class has a property in its constructor
          called `fontStyle` of type `FontStyle`. The `FontStyle`
          enumeration has a case called `italic`. See if you can
          use this information to set the `fontStyle` of this
          `TextStyle` class!
          */
          fontStyle: /* TODO: put your code here */,
        ),
      ),
    );
  }
}
