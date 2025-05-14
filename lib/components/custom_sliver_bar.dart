import 'package:flutter/material.dart';

class CustomSliverBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const CustomSliverBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text("Jeans Kitchen"),
      expandedHeight: 320,
      collapsedHeight: 120,
      pinned: true,
      floating: false,
      actions: [IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(padding: const EdgeInsets.only(bottom: 48.0), child: child),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
