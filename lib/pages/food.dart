import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_button.dart';
import 'package:jeans_kitchen/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddon = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddon) {
      selectedAddon[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //food image
                Image.asset(widget.food.imagePath),

                //description/addons
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.food.description,
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                      ),
                      const SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(height: 10),
                      Text("Addons", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 10),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.availableAddon.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddon[index];

                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text('\$${addon.price}'),
                            value: widget.selectedAddon[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddon[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),

                //button
                CustomButton(text: "Add to cart", onTap: () {}),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Opacity(
            opacity: 0.8,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
