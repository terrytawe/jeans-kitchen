class Food {
  final String name;
  final String description;
  final String imagePath;
  final String price;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

enum FoodCatergory { burgers, salads, desserts, sides, drinks }
