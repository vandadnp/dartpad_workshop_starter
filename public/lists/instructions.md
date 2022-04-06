# Lists

Lists are one of the fundamentals of any app with a UI, whether it's a mobile, desktop or a web app. Lists in UIKit are usually created using a `UITableView` but you can also create simple lists by adding `UILabel` instances inside a vertical `UIStackView` which is then placed inside a `UIScrollView`. The UIKit way of creating lists is cumbersome regardless of approach so we won't go into details about that.

In SwiftUI, you can create a simple static list using the `List` view:

```
struct ContentView: View {
  var body: some View {
    List {
      Text("Hello")
      Text("World")
    }
  }
}
```

In Flutter, if you had to create a similar list, you would use the `ListView` view to render the list items, and each item would ideally be of type `ListTile` as shown here:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Does it make sense to use normal ListView(children: [Text, Text]) here for a direct comparison, then introduce builder as a speed improvement? Not sure if that would help folks visualize the similarities.
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(index == 0 ? 'Hello' : 'World'),
          );
        },
      ),
    );
  }
}
```

Note how we are using `ListView.builder` here? The `builder()` function is a constructor for the `ListView` class that accepts the number of items to display plus the `builder` parameter. The `builder` parameter/pattern is often used in Flutter. It's Flutter's way of "call back", asking the developer to return a widget to be displayed in the widget tree. There are many builders in Flutter, such as `FutureBuilder`, `StreamBuilder` and so on which we won't talk about right now!

## List View Item Builder

The `itemBuilder` parameter of `ListView.builder` constructor, is defined in Flutter in this way:

```dart
typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);
```

This is a typedef much like you would define in Swift in this way:

```
typealias IndexWidgetBuilder = (BuildContext, Int) -> Widget
```

What this parameter expects is a function that takes in two parameters:

1. a build context, which is Flutter's reference to the widget hierarchy for the current widget
2. an integer index into the item to be displayed

The index is very useful and it will allow you to extract the relevant model object to be displayed in your `ListView`. Let's have a look at a more complex example. Let's say we have a list/array of `Person` class instances that we want to display to the user inside a `ListView`. First we go about creating our class `Person` and then instances of it and then place those instances inside our list:

```dart
@immutable
class Person {
  final String name;
  const Person(this.name);
}

const people = [
  Person('Foo'),
  Person('Bar'),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(people[index].name),
          );
        },
      ),
    );
  }
}
```

Notice how the `Person` class is defined as immutable? That's a hint to the Dart _analyzer_ that will then warn us if we create a mutable sub-class of the `Person` class. Whereas in Swift we have `struct` and `class`, in Dart all we have is `class` so to make the classes immutable like `struct` in Swift, you'd have to mark the class as `@immutable`.

## Challenge

Every `ListTile` instance has properties on how the tile should be displayed to the user. In the code above we used the `title` property of our tile instances to display the name of every `Person` class. In this challenge you will need to use the `trailing` property of `ListTile` in order to display every person's age. I've already changed the `Person` class for you so that it includes the `age` property. All you have to do is to display it. Good luck now!