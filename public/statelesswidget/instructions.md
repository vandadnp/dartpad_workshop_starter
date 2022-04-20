# `StatelessWidget`

In SwiftUI, any view can have a state and watch changes to an observable object. In Flutter however, state is an absolute subject meaning that your views either do or don't have a state. If your views don't have a state, meaning they don't manage data that can change over time, then you should use a `StatelessWidget`.

By now you have heard a lot about widgets in this workshop. In Flutter almost everything is a widget. Even a gesture detector/recognizer in Flutter is a widget. The `child` of the `GestureDetector` is the view/widget that wants to have gesture recognition. `StatelessWidget` as its name indicates is not an exception from this concept in that `StatelessWidget` as its name indicates is also a widget!

## StatelessWidget Is Immutable

Since Flutter is open-source, using your favorite code editor, you can drill down into its code and look at how the `StatelessWidget` class is defined:

```dart
abstract class StatelessWidget extends Widget {
  /// Initializes [key] for subclasses.
  const StatelessWidget({ Key? key }) : super(key: key);
  ...
```

As you can see, `StatelessWidget` subclasses the `Widget` class, so let's look at how `Widget` is defined:

```dart
@immutable
abstract class Widget extends DiagnosticableTree {
  /// Initializes [key] for subclasses.
  const Widget({ this.key });
  ...
```

Do you notice the `@immutable` tag there on top of the `Widget` definition? That means that `Widget` and any subclasses of `Widget` including `StatelessWidget` should only store data that does not change over time.

Let's compare this with how `View` is defined in `SwiftUI`:

```
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol View {
  ...
```

`View` in SwiftUI is just a protocol/interface to which some concrete implementations conform to, such as `VStack`:

```
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct VStack<Content> : View where Content : View {
  ...
```

In SwiftUI, your state is managed by your state variables whereas in Flutter your state is managed by a widget called `StatefulWidget` which is able to re-render itself should any of its state variables change, very similar to SwiftUI in fact if you think about it. In that sense, you could say that `View` in SwiftUI plus `@State` variables are similar to `StatefulWidget` (note stateful, not stateless). We will talk about `StatefulWidget` in the next step but for now let's focus on `StatelessWidget`.

## Small Challenge

In the code on the right hand side, you have a compile-time error. See if you can find the issue and solve it given the instructions I've left for you in the code.