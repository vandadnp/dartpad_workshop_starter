import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(title: 'Flutter and SwiftUI'),
    ),
  );
}

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        /*
        Display the contents of this widget's "title" property
        this property is defined in line 12. In Swift, "self"
        refers to the current instance. In Dart, instead of "self"
        we use "this" so instead of "self.title" we would use
        this.title, but you're strongly encouraged by Dart itself
        not to use "this" as a prefix. See if you can get this
        Text widget to render the contents of the "title" property!
        */
        child: Text(),
      ),
    );
  }
}
