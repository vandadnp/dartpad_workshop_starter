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
      /*
        The TextField widget in Flutter has a parameter
        in its constructor of type boolean, called `obscureText`.
        This will ensure that this text field turns into a
        password text field. See if you can figure out how to
        pass the value of `true` to this parameter in the
        constructor of this `TextField`
        */
      body: TextField(),
    );
  }
}
