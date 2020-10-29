import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/hive.dart';
import 'core/theme_controller.dart';
import 'domain/init_hive.dart';
import 'domain/lemma.dart';
import 'internal/application.dart';

void main() async {
  Get.lazyPut<ThemeController>(() => ThemeController());
  Get.lazyPut<HiveWrapper>(() => HiveWrapper());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  await Hive.initFlutter();
  Hive.registerAdapter(LemmaAdapter());
  // ignore: await_only_futures
  await initServices();
  await Hive.openBox('lemma', keyComparator: (dynamic k1, dynamic k2) => 0);
  await Hive.openBox('history');
  runApp(MyApp());
}

void initServices() async {
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => DbService().init());
  print('All services started...');
}

class DbService extends GetxService {
  Future<DbService> init() async {
    print('$runtimeType delays 2 sec');
    await InitHiveDb().init();
    print('$runtimeType ready!');
    return this;
  }
}
