import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_description.dart';
import 'package:jeans_kitchen/components/custom_drawer.dart';
import 'package:jeans_kitchen/components/custom_food_tile.dart';
import 'package:jeans_kitchen/components/custom_location.dart';
import 'package:jeans_kitchen/components/custom_sliver_bar.dart';
import 'package:jeans_kitchen/components/custom_tabbar.dart';
import 'package:jeans_kitchen/models/food.dart';
import 'package:jeans_kitchen/models/restaurant.dart';
import 'package:jeans_kitchen/pages/food.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCatergory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCatergory category, List<Food> foodMenu) {
    return foodMenu.where((food) => food.catergory == category).toList();
  }

  List<Widget> getFoodInthisCategory(List<Food> fullMenu) {
    return FoodCatergory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return CustomFoodTile(
            food: food,
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage(food: food)),
                ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home")),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              CustomSliverBar(
                title: CustomTabBar(tabController: _tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    //Location
                    CustomLocation(),
                    //DescriptionBox
                    CustomDescription(),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurant>(
          builder:
              (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInthisCategory(restaurant.menu),
              ),
        ),
      ),
    );
  }
}
