void main() {
  for (int i = 0; i < 10; i++) {
    print("Hello, World! $i");
  }
  print("Hello, World!");

  var name = "Mario";
  print("Hello, \$$name!");
  // name = 15; // This will cause an error because 'name' is a String

  final int age = 30;
  print("Hello, World! $age");
  // age = 31; // This will cause an error because 'age' is final

  //Use final when the value is only known at runtime.
  final DateTime now = DateTime.now();
  print("Current time: $now");

  const double pi = 3.14;
  print("Value of pi: $pi");
  // pi = 3.14159; // This will cause an error because 'pi' is const
  // Use const when the value is known at compile time.
}
