import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const CustomDrawerItem({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListTile(
        title: Text(text, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
        leading: Icon(icon, color: Theme.of(context).colorScheme.inversePrimary),
        onTap: onTap,
      ),
    );
  }
}
