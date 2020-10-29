import '../core/hive.dart';
import 'lemma.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final Lemma lemma;
  HiveWrapper hive = Get.find();
  DetailsController({this.lemma});
  @override
  void onInit() {
    writeToHisotry();
    super.onInit();
  }

  writeToHisotry() async {
    await hive.writeToBox(item: lemma, name: 'history');
  }

  @override
  void onReady() {
    print('im ready');
    super.onReady();
  }
}
