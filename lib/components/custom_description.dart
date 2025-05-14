import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [Text("\$ 9.99"), Text("Delivery fee")]),
          Column(children: [Text("10-20min"), Text("Delivery time")]),
        ],
      ),
    );
  }
}
