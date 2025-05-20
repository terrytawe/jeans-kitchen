import 'package:flutter/material.dart';
import 'package:jeans_kitchen/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Salads
    Food(
      name: "Chicken salad",
      description:
          "flame grilled chicken pieces, lettuice, tomatoes, olives, and our famous jeans salad sauce",
      imagePath: "lib/images/salads/chicken_salad.png",
      price: 9.99,
      catergory: FoodCatergory.salads,
      availableAddon: [
        Addon(name: "cheese", price: 0.50),
        Addon(name: "cucumber", price: 0.50),
        Addon(name: "bread", price: 0.50),
      ],
    ),
    Food(
      name: "Potato salad",
      description: "Potatoes, lettuice, tomatoes, olives, and our famous jeans salad sauce",
      imagePath: "lib/images/salads/chicken_salad.png",
      price: 9.99,
      catergory: FoodCatergory.salads,
      availableAddon: [
        Addon(name: "cheese", price: 0.50),
        Addon(name: "cucumber", price: 0.50),
        Addon(name: "bread", price: 0.50),
      ],
    ),

    //Meals
    Food(
      name: "Mashed potato",
      description:
          "flame grilled chicken pieces, lettuice, tomatoes, olives, and our famous jeans salad sauce",
      imagePath: "lib/images/meals/chicken_meal.png",
      price: 9.99,
      catergory: FoodCatergory.meals,
      availableAddon: [
        Addon(name: "cheese", price: 0.50),
        Addon(name: "cucumber", price: 0.50),
        Addon(name: "bread", price: 0.50),
      ],
    ),
    Food(
      name: "Rice & prawns",
      description:
          "flame grilled chicekn pieces, lettuice, tomatoes, olives, and our famous jeans salad sauce",
      imagePath: "lib/images/meals/rice_shrimp_meal.png",
      price: 9.99,
      catergory: FoodCatergory.meals,
      availableAddon: [
        Addon(name: "cheese", price: 0.50),
        Addon(name: "cucumber", price: 0.50),
        Addon(name: "bread", price: 0.50),
      ],
    ),
  ];

  /*
  Getters
  */
  List<Food> get menu => _menu;

  /*
  Operations 
  */

  /*
  Helpers 
  */
}
