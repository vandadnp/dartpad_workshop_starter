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
      body: SafeArea(
        child: Row(
          /*
          Try to align both the Text children of this row to the
          right hand side of the screen. The cross-axis of the row
          controls the horizontal positioning of the components
          so you need to use the `mainAxisAlignment` parameter
          of the `Row` constructor. The value of this property
          is of type `MainAxisAlignment` which is an enumeration
          and contains values such as `start` and `center`. Can
          you figure out what value to use to align the children
          to the right hand side?
          */
          children: const [
            Text('Hello'),
            Text('World'),
          ],
        ),
      ),
    );
  }
}
