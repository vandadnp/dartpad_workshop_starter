# Columns

Just like `Row` in Flutter that lays out its widgets (`children` property) in a horizontal fashion, a column as its name indicates lays out its children widgets in a vertical fashion from top to bottom. The equivalent of Flutter's `Column` in SwiftUI is `VStack` and in UIKit an instance of `UIStackView` with a vertical axis.

This is how you would create a `Column` in Flutter:

```dart
Column(
  children: const [
    Text('Hello'),
    Text('World'),
  ],
)
```

The same thing can be done in SwiftUI

```
VStack {
  Text("Hello")
  Text("World")
}
```

And of course in UIKit as well:

```
let stack = UIStackView()
stack.axis = .vertical
let hello = UILabel()
hello.text = "Hello"
stack.addArrangedSubview(hello)
let world = UILabel()
hello.text = "World"
stack.addArrangedSubview(world)
```

## Main and Cross Axis for `Column`

Just like a `Row`, all columns have two axis:

1. main axis: that runs vertically from top to bottom
2. cross axis: that runs horizontally from left to right

The default main axis of all columns is `MainAxisAlignment.start` meaning that the children of the column will be aligned to the top of the column. If you want to, for instance, arrange all the children of a column to the center, in the vertical (main) axis, then you would do something like this:

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Text('Hello'),
    Text('World'),
  ],
)
```

This does not however center the components in the horizontal (cross) axis. How do we do that, you might ask? Well, that's for you to figure out in the challenge below!

## Challenge

See if you can figure out a way to center the children of this `Column` instance both horizontally and vertically!