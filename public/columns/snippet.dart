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
        child: Column(
          /*
          See if you can figure out a way to center the children of 
          this Column instance both horizontall and vertically!

          The `mainAxisAlignment` of a column controls the vertical
          positioning of its children and the `crossAxisAlignment`
          controls the horizontal positioning. Position these two
          `Text` children of the column in the horizontal AND
          vertical center of the column to pass this challenge!

          As a tip: this is a trick question. The `Column` widget
          only takes as much space as required horizontally for its
          children and since both these `Text` widgets contain very
          short strings, even if you set the `crossAxisAlignment`
          of your column, the children will not be aligned to the
          horizontal center. What you need to do is to wrap your
          `Text` widgets inside a `Row` and experiment with that
          until you nail it. Good luck now!
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
