# Rows

A row is a UI component that arranges its children horizontally. In SwiftUI, a row is constructed using `HStack`, in UIKit a row is created with a `UIStackView` with a horizontal axis. In Flutter, a row is created with the `Row` widget.

# Rows in SwiftUI vs Flutter

Let's have a look at creating a row of two labels in SwiftUI:

```
struct ContentView: View {
  var body: some View {
    HStack {
      Text("Hello")
      Text("World")
    }
  }
}
```

Now let's do the same thing in Flutter:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            Text('Hello'),
            Text('World'),
          ],
        ),
      ),
    );
  }
}
```

In SwiftUI, the constructor of many UI components, such as `HStack`, has a trailing parameter to actually create the components to be displayed. In Flutter, the components are instead passed to the constructor as a named argument called `children`, which accepts a `List<Widget>`. `List` in Dart, as its name indicates, is how Dart creates arrays. The same format in Swift would be `[Widget]`.

## SafeArea

Note the usage of the `SafeArea` widget. You've now seen this in a few of the examples in this workshop and probably already know its purpose. In Flutter, the `SafeArea` widget ensures that its child widget is displayed in a way that is not obstructed by, for instance, the iOS notch, or any other obstacles.

## Main and Cross Axis in `Row`

Row is a component that arranges its children horizontally. Therefore its *main axis* is horizontal and is across the screen from left to right. The *cross axis* of the `Row` class is perpendicular to its main axis, meaning that the cross axis of a row is vertical, runs from top to bottom. It's important to understand the difference between these axis since there are properties both inside `Row` and `Column` (which we will talk about later) that control the arrangement of the children of these components. 

In SwiftUI, these alignment options are exposed through `HorizontalAlignment` and `VerticalAlignment`. In Flutter, they are exposed as `MainAxisAlignment` and `CrossAxisAlignment` where the main axis alignment of a row controls the horizontal positioning of its children since the main axis of a row is horizontal and its cross axis alignment controls the vertical positioning of its children since cross axis of a row is vertical.

For instance, if you want a row to place all its children in the center of its available horizontal space (main axis, since row is a horizontal component), you'd write your code like this:

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Text('Hello'),
    Text('World'),
  ],
)
```

## Challenge

Now that you know about cross and main axis alignment in Flutter, see if you can complete the challenge on the right hand side by following the instructions I've provided for you in form of comments. Good luck!

<!-- Maybe let them know about ctrl+enter inside the constructor to display a list of code completion options, including `mainAxisAlignment`? >