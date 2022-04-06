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
  // Random Thought: Keep accepting the title as part of the constructor and display it below. Then, introduce a new variable called currentTime which stores and displays this information? That way you can show them how to use constructor params in StatefulWidget?
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

This might look like a lot of code, and compared to the SwiftUI variant, it is. However, it's mostly boilerplate code which we will go through in this chapter.

## What is `StatefulWidget`?

<!-- this is tricky... the StatefulWidget doesn't really have access to setState, but rather the State class does. Might be a good idea to talk about the two separate objects up front, then dive into what each one does? Example from the docs, could be rewritten in more friendly language: "StatefulWidget instances themselves are immutable and store their mutable state separate State objects that are created by the createState method." E.g. "The StatefulWidgets accepts configuration data and creates a State object. The State object manages the data that can change over time and rebuilds when it does." -->
A stateful widget, as its name indicates, is an instance of `StatefulWidget` class in Flutter. This class has access to a special function called `setState()`. The `setState()` function, allows you to signal to the Flutter engine that you are making changes to the UI of this widget and need the engine to redraw the modified part of the UI after your call to `setState()` is done. If you look at the code on how we call this function:

```dart
setState(() => title = DateTime.now().toIso8601String());
```

We are providing it with another function. The single parameter to this function is another function. The function that is passed to `setState()` can then modify the properties of the state object. After the execution of this function, Flutter will re-render the affected parts of the widget-tree. This is the header of how `setState()` as a function is defined within Flutter:

```dart
@protected
  void setState(VoidCallback fn) {
    assert(fn != null);
    assert(() {
      if (_debugLifecycleState == _StateLifecycle.defunct) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('setState() called after dispose(): $this'),
          ...
```

## `StatefulWidget` vs `State`

If you look at the code at the beginning of this step, you'll see that our Flutter implementation has a subclass of `StatefulWidget` and our `HomePage` stateful widget has a state object of type `_HomePageState` defined as shown here:

```dart
class _HomePageState extends State<HomePage> {
```

Flutter separates the concern of the stateful widget from its state object. Every state object in Flutter is translated to an object that can be displayed on the screen by returning a `Widget` instance from its `build()` function.

The takeaway from this for you as a SwiftUI or UIKit developer should be that in Flutter, if you want to create UI components on the screen where the component can be updated from within from some state changes, you will need to use a `StatefulWidget`.

## Challenge

<!-- Could potentially ask them to use Dartpad to "Convert to StatefulWidget" as well. Helpful to teach about Dart IDE tools. -->
In this challenge, you'll need to execute the `setState()` function as you learned here, and upon the text button being pressed, you'll need to get the `Text` widget to display the current time. Look at the comments in the code and see if you can figure it out! Good luck.