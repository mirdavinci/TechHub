import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  final miniCarouselController = CarouselController();
  final mainCarouselController = CarouselController();
  var x = 0;
}
