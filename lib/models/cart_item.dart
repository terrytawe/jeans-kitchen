import 'package:jeans_kitchen/models/food.dart';

class CartItem {
  Food food;
  List<Addon> addons;
  int quantity;

  CartItem({required this.food, required this.addons, this.quantity = 1});

  double get totalPrice {
    double addonsPrice = addons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
