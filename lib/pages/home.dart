import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_description.dart';
import 'package:jeans_kitchen/components/custom_drawer.dart';
import 'package:jeans_kitchen/components/custom_location.dart';
import 'package:jeans_kitchen/components/custom_sliver_bar.dart';
import 'package:jeans_kitchen/components/custom_tabbar.dart';

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
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home")),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            //First Child
            ListView.builder(itemCount: 5, itemBuilder: (context, index) => Text("Salads")),
            //Second Child
            ListView.builder(itemCount: 5, itemBuilder: (context, index) => Text("Meals")),
            //Third child
            ListView.builder(itemCount: 5, itemBuilder: (context, index) => Text("Sides")),
            //Fourth child
            ListView.builder(itemCount: 5, itemBuilder: (context, index) => Text("Desserts")),
            //Fifth child
            ListView.builder(itemCount: 5, itemBuilder: (context, index) => Text("Drinks")),
          ],
        ),
      ),
    );
  }
}
