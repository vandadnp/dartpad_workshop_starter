# Containers

A container in Flutter is a type of *view* that is rendered on the screen. It by default has no content (text, etc) and its sole purpose is to be, well, a container for another view that gets inserted into the container through its `child` property.

In SwiftUI, the closest equivalent of `Container` is `Rectangle` and in UIKit, `UIView`! Here is an example of creating a container/rectangle in SwiftUI with the width and height of 100 points in the center of the screen:

```
struct ContentView: View {
  var body: some View {
    Rectangle()
      .foregroundColor(Color.blue)
      .frame(width: 100, height: 100)
  }
}
```

The same thing can be achieved in UIKit with the following code:

```
let view = UIView()
view.backgroundColor = .blue
view.translatesAutoresizingMaskIntoConstraints = false
self.view.addSubview(view)
NSLayoutConstraint.activate([
  view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
  view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
  view.widthAnchor.constraint(equalToConstant: 100),
  view.heightAnchor.constraint(equalToConstant: 100)
])
```

And in Flutter, using `Container` as shown here:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
```

## Adding a Child Widget to `Container`

Just like almost every other widget in Flutter, `Container` has a property called `child` of type `Widget`. That means `Container`, can contain another child inside it; another widget. This is the way Flutter chains widgets to each other. For instance, if you want to detect a tap gesture on a container instance, you would wrap the container instance with a `GestureDetector` as shown here:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // do something here
          },
          child: Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
```

In the same fashion, you can add other widgets into an instance of `Container` by setting that widget as the child of the container. Here is an example that displays a white 'Hello, world!' text in the container:

```dart
Container(
  color: Colors.blue,
  height: 100,
  width: 100,
  child: const Text(
    'Hello, world!',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
)
```

## Challenge

In the code to the right, you have a blue container that is 100x100 points wide and is placed at the center of the screen. See if you can figure out how to place another container of size 50x50, with a white color, in the middle of the outer container.
