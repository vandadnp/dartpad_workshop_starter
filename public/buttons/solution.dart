import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum WhichButton { button1, button2 }

class _HomePageState extends State<HomePage> {
  WhichButton? pressedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                setState(() => pressedButton = WhichButton.button1);
              },
              child: const Text('Button 1'),
            ),
            TextButton(
              onPressed: () {
                setState(() => pressedButton = WhichButton.button2);
              },
              child: const Text('Button 2'),
            ),
            pressedButton != null
                ? Text("You've pressed on $pressedButton")
                : const Text('Press a button please')
          ],
        ),
      ),
    );
  }
}
