void main() {
  // what is future?
  // Future is a way to handle asynchronous operations in Dart.
  // similar to a promise in JavaScript.

  // Future can be completed with a value or an error.
  final Future<Post> post = fetchPost();

  post
      .then((value) {
        // This block runs when the Future completes successfully.
        print('Post fetched successfully: $value');
      })
      .catchError((error) {
        // This block runs if the Future completes with an error.
        print('Error fetching post: $error');
      })
      .whenComplete(() {
        // This block runs when the Future completes, regardless of success or failure.
        print('Future completed.');
      });

  print('lol'); // This line runs immediately, before the Future completes.
}

Future<Post> fetchPost() {
  // This function simulates fetching data asynchronously.
  // It returns a Future that completes after a delay.
  return Future.delayed(Duration(seconds: 2), () {
    return Post(
      'Async Await in Dart',
      'This is an example of using async and await in Dart.',
      1,
    );
  });
}

class Post {
  String title;
  String content;
  int userId;

  Post(this.title, this.content, this.userId);

  @override
  String toString() {
    return 'Post(title: $title, content: $content, userId: $userId)';
  }
}
