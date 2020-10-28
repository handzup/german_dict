import 'package:german_dict/core/hive.dart';
import 'package:german_dict/domain/lemma.dart';
import 'package:get/get.dart';

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
