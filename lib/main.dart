import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme_controller.dart';
import 'internal/application.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());
  runApp(MyApp());
}
