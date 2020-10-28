import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:german_dict/core/hive.dart';
import 'package:german_dict/domain/lemma.dart';
import 'package:get/get.dart';

class InitHiveDb extends GetxController {
  HiveWrapper hive = Get.find();

  Future<void> init() async {
    if (!await hive.check('lemma')) {
      await writeHive(await readrootBundle());
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

  Future<void> writeHive(List<Lemma> list) {
    hive.writeAllBox(item: list, name: 'lemma');
  }
}
