# `StatefulWidget`

State in Flutter and SwiftUI are handled similarly, yet the syntax can look different, as you'd expect. Let's have a look at an example. Let's say that we want to have a very simple SwiftUI application that displays a text on the screen. By default the text displays the current date and time. Upon tapping the text, the date and time at the time of tapping the text are extracted and put back into the text. The code would look like this:

```
import SwiftUI

struct ContentView: View {
  @State var title = Date().ISO8601Format()
  var body: some View {
    Text(title)
      .onTapGesture {
        title = Date().ISO8601Format()
      }
  }
}
```

Now let's implement the same thing in Flutter:

```dart
class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() => title = DateTime.now().toIso8601String());
          },
          child: Text(title),
        ),
      ),
    );
  }
}
```

This might look like a lot of code, and compared to the SwiftUI variant, it is, but it's mostly boilerplate code which we will go through in this chapter.