# Buttons

Buttons in almost every application that has a user interface play an important role. They allow the user to take action, that's why sometimes we call them CTA, Call to Action, which in fact is a marketing term!

## Buttons in SwiftUI vs Flutter

If you were to display a button in SwiftUI that upon pressing displayed an alert view to the user, you'd go about the implementation like this:

```
struct ContentView: View {
  
  @State var presented = false
  
  var body: some View {
    Button("Press me!") {
      presented = true
    }
    .alert(
      "You pressed the button",
      isPresented: $presented
    ) {
      Button("OK", role: .cancel) {}
    }
  }
}
```

Now let's implement the same thing in Flutter:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('You pressed the button'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  )
                ],
              ),
            );
          },
          child: const Text('Press me'),
        ),
      ),
    );
  }
}
```

Note the usage of `TextButton` here. `TextButton` in the Material library of Flutter is the equivalent of `Button` in SwiftUI and `UIButton` in UIKit. Note that Material library in Flutter creates its UI components according to Google's material design. If you want to have iOS-like UI components, as mentioned before, you will have to use the Cupertino library in Flutter. All you'll have to do is to change the `TextButton` to `CupertinoButton` and the `AlertDialog` to `CupertinoAlertDialog`. Yes, it's really that simple in Flutter to change the look and feel of your apps!

## Challenge

In this challenge we are going to use our knowledge of `setState()` and `TextButton` in order to allow the user to tap on any of the two buttons presented on the screen, upon pressing which the `Text` component will display which button was pressed!