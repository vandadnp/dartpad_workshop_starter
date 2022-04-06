# Flutter vs UIKit vs SwiftUI

<iframe width="560" height="315" src="https://www.youtube.com/embed/v-KV2N-UUts" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Flutter is Google's UI Framework that allows you to create beautiful applications on mobile, web and desktop with minimum effort. Flutter allows you to create your UI in a *declarative* way, much like SwiftUI. In that sense, Flutter is quite different from UIKit. UIKit allows you to create your UI in an *imperative* way, meaning you need to specify even the simplest constraints in order to ensure that a component is positioned properly on the screen. 

Much like SwiftUI, Flutter tries to ensure that the rendering engine takes care of much of the hassle of positioning components, leaving the programmer to focus on declaration of the UI, just like SwiftUI. Therefore in this workshop we will mainly focus on similarities of Flutter and SwiftUI and every now and then draw some comparisons between Flutter and UIKit too.

## Flutter vs UIKit Brief Comparison

Let's say that you want to create an instance of `UILabel` on a view controller in Swift using UIKit. Your code might look like this:

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

Dart is the programming language for writing Flutter applications, much like Swift is the language for writing iOS applications. If you decided to write the same code in Flutter, your code would look probably like this:

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

Take a moment to look at the declarative style of Flutter's UI generation. `Scaffold`, `SafeArea` and `Text` in this example are all widgets. We will talk more about widgets soon.

## Flutter vs SwiftUI Brief Comparison

If we took the Dart code, and re-wrote the same code in SwiftUI, we'd probably end up with something like this:

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

Note the similarities between SwiftUI and Flutter: both frameworks focus on declaring *how* the UI is structured on the screen instead of how it should be programmed.

## A Small Challenge

As a small challenge, let's see if you can fix the code provided to the right hand side by following the instructions!