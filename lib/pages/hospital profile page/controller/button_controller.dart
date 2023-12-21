import 'package:get/get.dart';

class ActiveButtonController extends GetxController {
  RxInt activeButtonIndex = 0.obs;

  void isActive(int index) {
    activeButtonIndex.value = index;
  }
}
