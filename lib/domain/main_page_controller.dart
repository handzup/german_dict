import 'package:get/get.dart';

import '../core/hive.dart';
import 'lemma.dart';

class MainPageController extends GetxController {
  List<Lemma> _list = [];
  List<Lemma> get list => _list;
  HiveWrapper hive = Get.find();

  @override
  void onInit() async {
    _list = await hive.readAll(name: 'lemma');
    update();
    super.onInit();
  }
}
