import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

Future<String> getFirstName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'Foo',
    );

Future<String> getLastName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'Bar',
    );

void getWholeName() async {
  final firstName = await getFirstName();
  final lastName = await getLastName();
  final fullName = '$firstName $lastName';
  print(fullName);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    getWholeName();
    return const Scaffold();
  }
}
