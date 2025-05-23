import 'dart:ffi';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:jeans_kitchen/models/cart_item.dart';
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
      availableAddon: [Addon(name: "cucumber", price: 0.50), Addon(name: "bread", price: 0.50)],
    ),
    Food(
      name: "Rice & prawns",
      description:
          "flame grilled chicekn pieces, lettuice, tomatoes, olives, and our famous jeans salad sauce",
      imagePath: "lib/images/meals/rice_shrimp_meal.png",
      price: 9.99,
      catergory: FoodCatergory.meals,
      availableAddon: [
        Addon(name: "cheese", price: 1.50),
        Addon(name: "cucumber", price: 2.50),
        Addon(name: "bread", price: 0.75),
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

  final List<CartItem> _cart = [];

  //Add to cart
  void addToCart(Food food, List<Addon> addons) {
    //check if item exists and add quantity
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food is the same
      bool isSameFood = item.food == food;
      // check if addons are the same
      bool isSameAddons = ListEquality().equals(item.addons, addons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, addons: addons));
    }

    notifyListeners();
  }

  //delete Items
  void deleteFromCart(CartItem cartItem) {
    //
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      //
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.addons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  /*
  Helpers 
  */
}
