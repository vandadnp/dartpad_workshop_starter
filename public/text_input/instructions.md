# Text Input

In SwiftUI, if you want to allow the user to enter text, you'd most probably create an instance of `TextField`. In UIKit as well you'd use `UITextField` unless you need some formatting options in which case you might use `UITextView`. In Flutter, you would use the `TextField` widget.

Let's look an example of a SwiftUI view that displays a text field and as the user changes the text in the text field, we will update the text of a `Text` view that follows right after the text field:

```
struct ContentView: View {
  @State var enteredText = ""
  var body: some View {
    
    let binding = Binding<String> {
      self.enteredText
    } set: {
      self.enteredText = $0
    }
    
    TextField(
        "",
        text: binding,
        prompt: Text("Enter your name here")
      )
      .padding()
      .textFieldStyle(.roundedBorder)
      
    Text(enteredText)
  }
}
```

In here we have a custom binding so that we can update our `Text` view as the user types their text in the text field.

Now let's look at the same example in Flutter using `StatefulWidget`:

```dart
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '';
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      setState(() => text = controller.text);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your name here',
              ),
              controller: controller,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
```

Notice how we are using a `TextEditingController` in this example. In Flutter, this is the proxy object that allows you to get notifications of changes inside a `TextField`, much like our custom `Binding` object in the SwiftUI code.

Note also how we are overriding the `initState()` and `dispose()` functions of our `StatefulWidget`. These functions are called as your stateful widget is initialized and then disposed and removed from the widget tree so they are perfect for mounting new objects and disposing of them later. This could however get quite tiresom and for that there are packages available that remove the boilerplate code, such as the Flutter Hooks package which I've explained in great details in this video: [https://youtu.be/XsbxM1Aztpo](https://youtu.be/XsbxM1Aztpo)

# Challenge

In a view where a user can enter their password, the password field would need to be obscure, meaning that the user should not be able to see the text they are typing in the text field for the sake of security. See if you can figure out how to create such a TextField in Flutter in the code on the right hand side!