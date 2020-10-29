import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme_controller.dart';

class MyDrawer extends StatelessWidget {
  bool checkBool(value) {
    if (value == ThemeMode.dark) {
      return true;
    }
    return false;
  }

  switchTheme(value) {
    if (value.themeMode == ThemeMode.dark) {
      ThemeController.to.setThemeMode(ThemeMode.light);
    } else {
      ThemeController.to.setThemeMode(ThemeMode.dark);
    }
  }

  @override
  Widget build(BuildContext context) {
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
              child: Center(
                child: Image.asset(
                  'assets/images/icon.png',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            ListTile(
              title: Text(
                'Lug\'at haqida',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () => Get.toNamed('/intro'),
            ),
            ListTile(
              title: Text(
                'Lug\'atdan foydalanish uchun ko\'rsatmalar',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () => Get.toNamed('/desc'),
            ),
            Divider(
              height: 1,
            ),
            GetBuilder<ThemeController>(
              init: ThemeController(),
              builder: (value) => ListTile(
                title: Text(
                  value.themeMode == ThemeMode.dark
                      ? 'Disable Dark Mode'
                      : 'Enable Dark Mode',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                trailing: CupertinoSwitch(
                  value: checkBool(value.themeMode),
                  onChanged: (c) => switchTheme(value),
                  activeColor: Colors.black,
                ),
                onTap: () => switchTheme(value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
