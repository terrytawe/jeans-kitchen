import 'package:flutter/material.dart';
import 'package:jeans_kitchen/components/custom_drawer_item.dart';

import '../pages/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // icon
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Icon(
              Icons.lock_open_rounded,
              size: 50,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          // Divider
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          //home
          CustomDrawerItem(text: "Home", icon: Icons.home, onTap: () => Navigator.pop(context)),

          //settings
          CustomDrawerItem(
            text: "Settings",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),

          const Spacer(),

          //logout
          CustomDrawerItem(text: "Sign out", icon: Icons.lock, onTap: () {}),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
