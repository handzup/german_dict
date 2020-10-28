import 'dart:convert';

import 'package:flutter/services.dart';
import '../core/hive.dart';
import 'lemma.dart';
import 'package:get/get.dart';

class InitHiveDb extends GetxController {
  HiveWrapper hive = Get.find();

  Future<void> init() async {
    if (!await hive.check('lemma')) {
      writeHive(await readrootBundle());
    }
  }

  Future<List<Lemma>> readrootBundle() async {
    List<Lemma> list = List<Lemma>();
    String jsonString = await _loadFromAsset();
    final json = jsonDecode(jsonString);
    await json.forEach((a) => list.add(Lemma.fromJson(a)));
    return list;
  }

  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString("assets/data/codebeautify.json");
  }

  void writeHive(List<Lemma> list) {
    hive.writeAllBox(item: list, name: 'lemma');
  }
}
