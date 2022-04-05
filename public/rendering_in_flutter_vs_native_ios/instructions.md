# Rendering in Flutter vs Native iOS

If we take the example from the previous section and run it on an iOS Simulator while doing 3D debugging in Xcode, you will see quite a few layers rendered on the screen. If you do the same code in Flutter, you'll see that the Flutter's rendering engine draws up a single view controller called `FlutterViewController` and renders your text on it. But how does Flutter do that? Flutter uses Metal on iOS/ipadOS/macOS in order to render its contents.

That's right! Everything that you see on the screen rendered by Flutter, is done through Flutter's rendering engine, Skia. Skia takes the code that you've written in your Flutter application, and uses native rendering techniques in order to display your application's UI to the user. That means your UI is very flat and rendered by Metal on iOS and OpenGL ES on Android in order to ensure maximum performance.

If you look at how the previous example is rendered in a native SwiftUI application, your UI in the 3D Debugger will look like this:

![](https://raw.githubusercontent.com/vandadnp/dartpad_workshop_starter/main/public/images/rendering_in_flutter_vs_native_ios_image_1.png)

If you run the same Flutter code from the previous step and check out the 3D Debugger, you'd see the following rendering:

![](https://raw.githubusercontent.com/vandadnp/dartpad_workshop_starter/main/public/images/rendering_in_flutter_vs_native_ios_image_2.png)

Notice the absence of any label or text component on the screen? That's because Skia is rendering that component on that single `FlutterViewController` instance using Metal on iOS!

## Cupertino Package

By default, Flutter uses a package called Material to display its UI components on the screen. However, if you want to achieve a more iOS-ish style for your iOS apps, you can use the Cupertino package. This package gives a more iOS-y look and feel to your UI components. But remember, at the end of the day it's Skia that is just rendering your components to the screen. Let's have a look at an example:

```dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const CupertinoApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Hello from Flutter'),
      ),
    );
  }
}
```

Notice the followings in the above code?

* Use of `CupertinoApp` instead of `MaterialApp`
* Use of `CupertinoNavigationBar` in our `Scaffold` widget

When it comes to using Cupertino styles components on the screen, all you really have to do in most cases is to remove the Material components such as `AppBar` and `MaterialApp` and replace them with their Cupertino styled counterparts, `CupertinoNavigationBar` and `CupertinoApp` in this example.

## Let's Practice

As you can see, in the example code to the right, our `CupertinoNavigationBar` has a property called `middle`. What you might not know is that the same widget has two other properties namely `leading` and `trailing`. With this information, see if you can complete the challenge in this chapter!