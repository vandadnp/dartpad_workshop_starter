# Flutter vs UIKit vs SwiftUI

Flutter is Google's UI Framework that allows you to create beautiful applications on mobile, web and desktop with minimum effort. Flutter allows you to create your UI in a declarative way, much like SwiftUI. In that sense, Flutter is quite different from UIKit. UIKit is a lot more expressive in that you will need to specify even the simplest constraints in order to ensure that a component is positioned properly on the screen. Much like SwiftUI, Flutter tries to ensure that the rendering engine takes care of much of the hassle of positioning components, leaving the programmer to focus on declaration of the UI, just like SwiftUI. Therefore in this workshop we wilkl mainly focus on similarities of Flutter and SwiftUI and every now and then draw some comparisons between Flutter and UIKit too.

## Flutter vs UIKit Brief Comparison

Let's say that you want to create an instance of `UILabel` on a view controller in UIKit. Your code probably would look something like this in Swift:

```
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, world!"
        self.view.addSubview(label)
        NSLayoutConstraint.activate([
            label.safeAreaLayoutGuide.topAnchor.constraint(
                equalToSystemSpacingBelow: self.view.safeAreaLayoutGuide.topAnchor,
                multiplier: 1.0
            )
        ])
    }
}
```

If you decided to write the same code in Flutter, your code would look probably like this:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Hello, world!'),
      ),
    );
  }
}
```

Take a moment to look at the expressive style of Flutter's UI generation. `Scaffold`, `SafeArea` and `Text` in this example are all widgets. We will talk more about widgets soon.

## Flutter vs SwiftUI Brief Comparison

If we took the Dart code (Dart is the programming language for writing Flutter applications, much like Swift is the language for writing iOS applications), and re-wrote the same code in SwiftUI, we'd probably end up with something like this:

```
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Hello, world!")
        .frame(
          maxWidth: .infinity,
          alignment: .leading
        )
      Spacer()
    }
  }
}
```

Note the similarities between expressiveness of both SwiftUI and Flutter in that the focus in these two frameworks is mainly to declare *how* the UI is structured on the screen than how it should be programmed and constraints to be created.

## A Small Challenge

As a small challenge, let's see if you can fix the code provided to the right hand side by following the instructions!