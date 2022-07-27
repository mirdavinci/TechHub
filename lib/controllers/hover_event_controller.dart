import 'package:get/get.dart';

class HoverEventController extends GetxController {
  RxBool isHovered = false.obs;

  void onEntered(isHovered) {
    this.isHovered.value = isHovered;
  }
}
