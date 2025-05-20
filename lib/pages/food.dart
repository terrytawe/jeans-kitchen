import 'package:flutter/material.dart';
import 'package:jeans_kitchen/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.asset(widget.food.imagePath)]);
  }
}
