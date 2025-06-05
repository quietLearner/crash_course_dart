void main() {
  Map<String, String> planets = {
    "first": "Mercury",
    "second": "Venus",
    "third": "Earth",
    "fourth": "Mars",
    "fifth": "Jupiter",
    "sixth": "Saturn",
    "seventh": "Uranus",
    "eighth": "Neptune",
  };
  print("Planets: $planets");

  // Adding a new planet
  planets["ninth"] =
      "Pluto"; // Pluto is no longer considered a planet, but we can still add it for fun
  print("Updated Planets: $planets");

  // Using map and where methods
  var planetNames = planets.values.toList();
  print("Planet Names: $planetNames");

  // Find planets with names longer than 5 characters
  var longNamedPlanets = planetNames.where((name) => name.length > 5).toList();
  print("Planets with names longer than 5 characters: $longNamedPlanets");

  // Find inner planets: Mercury, Venus, Earth, Mars
  var innerPlanetNames = ["Mercury", "Venus", "Earth", "Mars"];
  var innerPlanets = planets.values
      .where(
        (planet) => innerPlanetNames
            .map((name) => name.toLowerCase())
            .contains(planet.toLowerCase()),
      )
      .toList();
  print("Inner Planets: $innerPlanets");

  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List: $numbers");

  List<int> doubled = numbers.map((n) => n * 2).toList();
  print("Doubled List: $doubled");

  List<int> filtered = numbers.where((n) => n > 2).toList();
  print("Filtered List: $filtered");

  planets.containsKey("first")
      ? print("The first planet is: ${planets["first"]}")
      : print("No first planet found.");

  planets.containsValue("Earth")
      ? print("Earth is in the list of planets.")
      : print("Earth is not in the list of planets.");

  planets.remove("ninth");
  print("After removing Pluto: $planets");
}
