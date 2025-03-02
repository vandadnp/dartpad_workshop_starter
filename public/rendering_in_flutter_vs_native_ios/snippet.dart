import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const CupertinoApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        // use "leading" here just like "middle" and add the text "Leading" for it
        middle: Text('Hello from Flutter'),
        // use "trailing" here just like "middle" and add the text "Trailing" for it
      ),
      child: Container(),
    );
  }
}
