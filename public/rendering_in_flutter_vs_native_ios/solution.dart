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
        leading: Text('Leading'),
        middle: Text('Hello from Flutter'),
        trailing: Text('Trailing'),
      ),
      child: Container(),
    );
  }
}
