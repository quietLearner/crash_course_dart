void main() {
  var noodle = MenuItem("Spaghetti", 12.99888);
  var pizza = Pizza("Margherita Pizza", 9.99999, ["Mozzarella", "Basil"]);

  print(noodle);
  print(pizza);

  print(noodle.format());
  print(pizza.format());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  @override
  String toString() {
    // return 'MenuItem(title: $title, price: $price)';
    return format();
  }

  String format() {
    return '$title - \$${price.toStringAsFixed(2)}';
  }
}

class Pizza extends MenuItem {
  List<String> toppings = [];
  Pizza(super.title, super.price, this.toppings);

  // Override the format method to include toppings
  @override
  String format() {
    return '$title - \$${price.toStringAsFixed(2)} with toppings: ${toppings.join(', ')}';
  }
}
