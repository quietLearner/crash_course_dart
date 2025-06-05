void main() {
  // this is list
  List<int> scores = [10, 20, 30, 40, 50];
  print("Scores: $scores");

  // Adding a score
  scores.add(60);
  print("Updated Scores: $scores");

  // Removing a score
  scores.remove(30);
  print("Scores after removal: $scores");

  scores.removeLast();
  print("Scores after removing last: $scores");

  print(scores.length);
  print(scores.isEmpty);

  scores.shuffle();
  print("Scores after shuffle: $scores");

  scores.indexOf(40);
  print("Index of 40: ${scores.indexOf(40)}");

  // Checking if a score exists
  print("Contains 40: ${scores.contains(40)}");
  print("Contains 30: ${scores.contains(30)}");
  // Iterating through scores
  print("Iterating through scores:");
  for (var score in scores) {
    print("Score: $score");
  }
  // Using forEach to iterate
  print("Using forEach to iterate:");
  for (var score in scores) {
    print("Score: $score");
  }
  // Clearing all scores
  scores.clear();

  //this is set, no duplicates
  Set<int> uniqueScores = {10, 20, 30, 40, 50};
  print("Unique Scores: $uniqueScores");

  uniqueScores.add(50);
  print("Unique Scores after adding 50: $uniqueScores");
}
