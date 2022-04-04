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
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          /*
          In this challenge you need to create another `Container`
          instance and assign it to the `child` argument of the
          above container's constructor, just like we are assigning
          values of 100 to width and height arguments.

          See if you can place this white container in the center
          of the above container. Use the `child` argument of the
          above container to place the other container inside
          the above container. There is a little trick you have to
          apply to the creation of this new container!

          Here is a hint: you need to *center* the new container
          using the `Center` widget! Good luck now!
          */
        ),
      ),
    );
  }
}
