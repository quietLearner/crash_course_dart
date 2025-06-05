void main() async {
  // post is not a Future anymore, it is a Post object.
  // The async keyword allows us to use await inside this function.
  final Post post = await fetchPost();

  print(post);

  print(
    'lol',
  ); // This line runs after the Future completes, thanks to the await keyword.
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
