# Rendering Text

In UIKit, rendering static text is usually done through the `UILabel` class. In SwiftUI, the equivalent of `UILabel` is the `Text` structure as shown here:

```
import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
  }
}
```

In Flutter, if you want to display text, you would also use the `Text` widget. Remember, in Flutter almost everything is a `Widget`!

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Hello, world!'),
    );
  }
}
```

## Styling `Text`

In SwiftUI, if you want to change the way text is rendered on the screen, you would use what is called *modifiers*. For instance, to chaneg the font using which your text is rendered, you would use a modifier to change the font as shown here:

```
struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .font(.system(size: 30))
  }
}
```

In Flutter, to modify the look and feel of most widgets, you pass those values into the constructor of the Widget itself, instead of modifying the widgets after they are created, unlike SwiftUI. Let's achieve the same code as above using Flutter:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Hello, world!',
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
```

Notice how we are styling the `Text` widget using its `style` property. This property is passed to the constructor of the `Text` widget. Whereas in SwiftUI you modify a `View` using both constructors and modifiers, in `Flutter` you usually pass all these properties to the constructor of the `Widget` that you are rendering on the screen.

## Challenge

In this example we are going to render an italic text to the screen. In SwiftUI you would write the code as shown here:

```
struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .font(.system(size: 30))
      .italic()
  }
}
```

With the hints I've left you in the code to the right, see if you can figure out how to change the style of the same text in Flutter to italic!