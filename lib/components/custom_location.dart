import 'package:flutter/material.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text("Enter Location"),
            content: TextField(decoration: InputDecoration(hintText: "Search Address")),
            actions: [
              MaterialButton(
                onPressed: () => {Navigator.pop(context)},
                child: const Text("Cancel"),
              ),

              MaterialButton(onPressed: () => {Navigator.pop(context)}, child: const Text("Save")),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Abidjan, mbadon", style: TextStyle(fontSize: 16)),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
