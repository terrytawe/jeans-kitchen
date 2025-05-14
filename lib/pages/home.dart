import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_description.dart';
import 'package:jeans_kitchen/components/custom_drawer.dart';
import 'package:jeans_kitchen/components/custom_location.dart';
import 'package:jeans_kitchen/components/custom_sliver_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home")),
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              CustomSliverBar(
                title: Text("Title"),
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
        body: Container(color: Colors.amber),
      ),
    );
  }
}
