void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List: $numbers");

  for (int i = 0; i < numbers.length; i++) {
    numbers[i] *= 2; // Doubling each number
  }
  print("Doubled List: $numbers");

  // Using forEach to double each number
  for (var number in numbers) {
    print("Number: $number");
  }

  for (int number in numbers.where((n) => n > 5)) {
    print("Filtered Number: $number");
  }
}
