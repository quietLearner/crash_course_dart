import 'dart:math' as math;

import 'clazz.dart';

void main() {
  var collection = Collection("Fruits", ["Apple", "Banana", "Cherry", "Date"]);
  print("Collection: ${collection.name}");

  var randomItem = collection.randomItem();
  if (randomItem != null) {
    print("Random item from collection: $randomItem");
  } else {
    print("The collection is empty.");
  }

  var collection2 = Collection<MenuItem>("Menu Items", [
    MenuItem("Spaghetti", 12.99888),
    Pizza("Margherita Pizza", 9.99999, ["Mozzarella", "Basil"]),
  ]);

  MenuItem? randomMenuItem = collection2.randomItem();
  if (randomMenuItem != null) {
    print("Random menu item from collection: ${randomMenuItem.format()}");
    print(randomMenuItem.price.toStringAsFixed(2));
  } else {
    print("The collection is empty.");
  }
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T? randomItem() {
    if (data.isEmpty) {
      return null;
    }
    var index = (data.length * math.Random().nextDouble()).floor();
    return data[index];
  }
}
