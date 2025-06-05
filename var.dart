void main() {
  var name = "Mario";
  print("Hello, $name!");
  // name = 15; // This will cause an error because 'name' is a String

  final time = DateTime.now();
  print("Current time: $time");

  const pi = 3.14;
  print("Value of pi: $pi");
  // pi = 3.14159; // This will cause an error because 'pi' is const
  // Use const when the value is known at compile time.

  const age = 30;
  print(age + 5); // This is valid because 'age' is a constant
}
