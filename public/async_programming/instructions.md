# Async Programming

Asynchronous programming in Flutter is very similar to the latest developments in SwiftUI in that we have the concepts of `async` and `await` in both frameworks and they are used almost in the same manner.

There is one distinction though. In Flutter, a function that returns an asynchronous value is marked as returning a `Future<T>`, and `await`ing on the result of that future instance will give you the `T` value. In Swift however, a function returns `T` but the function itself is marked as `async` or `async throws`. Here is an example of an asynchronous function in Swift:

```
public func data(
  for request: URLRequest,
  delegate: URLSessionTaskDelegate? = nil
) async throws -> (Data, URLResponse)
```

Notice how the result is a tuple? In Dart, the same function would be marked as returning a `Future` and the caller would have to `await` on the function to return the value.

## Async Functions in SwiftUI vs Flutter

Let's have a look at an example in SwiftUI where we want to grab the `Data` that comes back when we fetch the contents of `https://google.com`:

```
func getData() async throws -> Data {
  let url = URL(string: "https://google.com")!
  let request = URLRequest(url: url)
  let (data, _) = try await URLSession.shared.data(for: request)
  return data
}

struct ContentView: View {
  var body: some View {
    Button("Get data") {
      Task {
        if let data = try? await getData() {
          print("Got data = \(data)")
        }
      }
    }
  }
}
```

Now let's do the same thing in Flutter:

```dart
Future<Uint8List> getData() async {
  final request = await HttpClient().getUrl(Uri.parse('https://google.com'));
  final HttpClientResponse response = await request.close();
  final bytes = await consolidateHttpClientResponseBytes(response);
  return bytes;
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
          onPressed: () async {
            final data = await getData();
            // now you have access to data
          },
          child: const Text('Get data'),
        ),
      ),
    );
  }
}
```

The major difference in this example compared to the SwiftUI example is that in Flutter, you can change the `onPressed` callback of the `TextButton` to become an `async` function by just adding `async` to its declaration. In SwiftUI however, we can't do that and need to create a `Task` inside the action. That's another way Flutter makes it easier for us programmers to work with asynchronous operations.

## Challenge

In this example we have 2 dummy functions. One that returns a `String` of `Foo` after 1 second, hence it being a `Future<String>` and another one that returns the value of `Bar`. We assume they are the first and last names of a person. Your challenge is to put these two strings together to form the full name, _Foo Bar_. Good luck!