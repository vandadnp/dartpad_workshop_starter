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
      body: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://raw.githubusercontent.com/vandadnp/dartpad_workshop_starter/main/public/images/network_image_1.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Image.network(
              'https://raw.githubusercontent.com/vandadnp/dartpad_workshop_starter/main/public/images/network_image_2.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
