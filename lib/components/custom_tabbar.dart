import 'package:flutter/material.dart';
import 'package:jeans_kitchen/models/food.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  List<Tab> _buildTabCategories() {
    return FoodCatergory.values.map((category) {
      return Tab(text: category.toString().split('.').last);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Theme.of(context).colorScheme.surface,
      controller: tabController,
      tabs: _buildTabCategories(),
      labelStyle: TextStyle(fontSize: 13),
    );
  }
}
