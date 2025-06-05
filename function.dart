void main() {
  final greeting = greet("Mario", 30);
  print(greeting);

  var g2 = greet2(age: 28, name: "Luigi");
  print(g2);

  String g3 = greet2(age: 30);
  print(g3);
}

String greet(String name, int age) {
  return "Hello, $name! You are $age years old.";
}

String greet2({String? name, required int age}) {
  return "Hello, ${name ?? "Guest"}! You are $age years old.";
}
