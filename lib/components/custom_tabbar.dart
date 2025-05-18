import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Theme.of(context).colorScheme.surface,
      controller: tabController,
      tabs: [
        //first tab
        Tab(text: "Salads"),
        Tab(text: "Meals"),
        Tab(text: "Sides"),
        Tab(text: "Desserts"),
        Tab(text: "Drinks"),
      ],
    );
  }
}
