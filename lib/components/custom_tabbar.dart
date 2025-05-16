import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        dividerColor: Theme.of(context).colorScheme.surface,
        controller: tabController,
        tabs: [
          //first tab
          Tab(text: "Vegan"),
          Tab(text: "Meat"),
          Tab(text: "Pastry"),
          Tab(text: "Desserts"),
        ],
      ),
    );
  }
}
