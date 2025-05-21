import 'package:jeans_kitchen/models/food.dart';

class CartItem {
  Food food;
  List<Addon> addon;
  int quantity;

  CartItem({required this.food, required this.addon, this.quantity = 1});
}
