# Displaying Images

Flutter, being a rich and modern UI framework, allows you to work with images really easily, much like SwiftUI! The main widget in Flutter that is used to display images, as you'd guess, is called `Image`. The `Image` class can display network, bundle and memory images where memory images are data in the memory that represent the file contents of an image. The `Image` class is a widget though, so it can even handle displaying a loading indicator while the image itself is being loaded to the memory!

## Network Images in UIKit vs SwiftUI vs Flutter

Let's say that you have the following network image to display in your UI: [https://bit.ly/3ywI8l6](https://bit.ly/3ywI8l6)

To do that in UIKit, you would probably write a code that is very similar to this, if you didn't use any third party libraries such as Alamofire:

```
import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let imageView = UIImageView()
    imageView.backgroundColor = .blue
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(imageView)
    NSLayoutConstraint.activate([
      imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
      imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
      imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5)
    ])
    let url = URL(string: "https://bit.ly/3ywI8l6")!
    URLSession
      .shared
      .dataTask(
        with: url
      ) { (data: Data?, _, error: Error?) in
        if let data = data {
          DispatchQueue.main.async {
            if let image = UIImage(data: data) {
              imageView.image = image
            }
          }
        }
      }.resume()
  }
}
```

That was a lot of code, phew! Now if you wanted to do the same thing in SwiftUI, you'd probably write a code that looks like this:

```
struct ContentView: View {
  var body: some View {
    AsyncImage(
      url: URL(string: "https://bit.ly/3ywI8l6")!,
      content: { (image) in
        image
          .resizable()
          .scaledToFill()
      },
      placeholder: {
        ProgressView()
      }
    )
    .frame(
      width: UIScreen.main.bounds.width,
      height: UIScreen.main.bounds.height / 2.0
    )
    .aspectRatio(contentMode: .fill)
  }
}
```

In Flutter, as you'd expect, in order to display a network image you would use the `Image` widget as shown here:

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://bit.ly/3ywI8l6',
        ),
      ),
    );
  }
}
```

## Image Class is a Widget in Flutter

In UIKit, an image is an instance of `UIImage` and to display that image you would need to wrap it inside an instance of `UIImageView`. In SwiftUI, the image is usually of type `Image` and the view that displays that instance on the screen is of type `AsyncImage` as shown here:

```
@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
public struct AsyncImage<Content> : View where Content : View {
  ...
```

In Flutter, when working with image, we usually don't have the separate concept of an image object and the view that display the image. All we need really is the `Image` widget and that widget has factory constructors that allow you to create network, memory and bundled images! However, in Flutter if you wish to load the data for your images from disk for instance, you can place the read bytes into a list of bytes (which we won't go into details of right now) and then pass those read bytes later into the `Image.memory()` factory constructor to display the image to the user!

## Challenge

In this challenge we want 2 network images to fill the entire width and height of the screen. I've placed one of these images inside the Column, and wrapped the image inside an `Expanded` widget. The expanded widget allows you to proportionally fill the available space with its `flex` property which is set to 1 by default. If you have two `Expanded` widgets inside a `Column` both of which have a flex value of 1, they will fill the available space and divide the space between each other equally.

See if you can load the second image at the second half of the container's available vertical space. Good luck!