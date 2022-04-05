import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

@immutable
class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
}

const persons = [
  Person('Foo', 20),
  Person('Bar', 30),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(persons[index].name),
            trailing: Text(persons[index].age.toString()),
          );
        },
      ),
    );
  }
}
