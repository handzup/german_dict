import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme_controller.dart';

class MyDrawer extends StatelessWidget {
  ThemeMode _themeMode;
  bool checkBool(value) {
    if (value == ThemeMode.dark) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    _themeMode = ThemeController.to.themeMode;

    return Container(
      color: Theme.of(context).cardColor,
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            ListTile(
              title: Text(
                'Item 1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text(
                'Item 2',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              height: 1,
            ),
            GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (value) => ListTile(
                title: Text(
                  'Enable Dark Mode',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                trailing: CupertinoSwitch(
                  value: checkBool(value.themeMode),
                  onChanged: (c) {
                    if (value.themeMode == ThemeMode.dark) {
                      ThemeController.to.setThemeMode(ThemeMode.light);
                    } else {
                      ThemeController.to.setThemeMode(ThemeMode.dark);
                    }
                  },
                  activeColor: Colors.black,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
