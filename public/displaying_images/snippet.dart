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
          /*
          See if you can load the second image at the second half of 
          the container's available vertical space. Good luck!

          The image you need to load is located at https://bit.ly/3qYOtDm
          What you need to end up with is two images each of which taking
          half of the space on the screen, displayed vertically one
          after the other.

          Hint: it's really a matter of copy pasting!
          */
        ],
      ),
    );
  }
}
