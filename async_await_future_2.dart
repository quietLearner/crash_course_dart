/*
https://pub.dev/
this is package manager for Dart and Flutter.
You can find packages for various functionalities, including HTTP requests, state management, and more.

https://jsonplaceholder.typicode.com/

*/
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  // post is not a Future anymore, it is a Post object.
  // The async keyword allows us to use await inside this function.
  final Post post = await fetchPost();

  // Print the Post object
  print(post);

  print('lol'); // This will print after the post is fetched
  // The program will wait for the fetchPost function to complete before printing this line.
}

Future<Post> fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  var response = await http.get(url);

  // print(response.body);

  if (response.statusCode == 200) {
    // cast the response body to a Map<String, dynamic>
    // This is necessary to parse the JSON response correctly.
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    // Create a Post object from the JSON response
    Post post = Post(
      jsonResponse['title'],
      jsonResponse['body'],
      jsonResponse['userId'],
    );

    return post; // Return the Post object
  } else {
    print('Request failed with status: ${response.statusCode}.');
    throw Exception('Failed to load post');
  }
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
