import 'package:german_dict/core/hive.dart';
import 'package:german_dict/domain/lemma.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final Lemma lemma;
  HiveWrapper hive = Get.find();
  DetailsController({this.lemma});
  @override
  void onInit() {
    print('im init with index ${lemma.lemma.hashCode}');
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
