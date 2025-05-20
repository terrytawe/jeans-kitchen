import 'package:flutter/material.dart';
import 'package:jeans_kitchen/models/food.dart';

class CustomFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const CustomFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      // ignore: prefer_interpolation_to_compose_strings
                      Text(
                        '\$${food.price}',
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        food.description,
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(food.imagePath, height: 120),
                ),
              ],
            ),
          ),
        ),

        Divider(color: Theme.of(context).colorScheme.tertiary, endIndent: 25, indent: 25),
      ],
    );
  }
}
