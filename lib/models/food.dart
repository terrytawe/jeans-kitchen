class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCatergory catergory;
  List<Addon> availableAddon;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.catergory,
    required this.availableAddon,
  });
}

enum FoodCatergory { burgers, salads, desserts, sides, drinks }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
