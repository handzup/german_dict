import 'package:flutter/material.dart';
import '../core/scrollbehavior.dart';
import '../core/theme.dart';
import 'package:get/route_manager.dart';

import '../core/theme_controller.dart';
import '../ui/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromPreferences();
    return GetMaterialApp(
      title: 'German Dictionary',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.light,
      home: ScrollConfiguration(behavior: MyBehavior(), child: HomePage()),
    );
  }
}
