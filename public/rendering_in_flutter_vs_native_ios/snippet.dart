import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    // Maybe leave this as a MaterialApp and ask them to convert it to a CupertinoApp?
    const CupertinoApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        // use "leading" here just like "middle" and add the text "Leading" for it
        middle: Text('Hello from Flutter'),
        // use "trailing" here just like "middle" and add the text "Trailing" for it
      ),
    );
  }
}
