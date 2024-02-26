import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout extends GetxController {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight() => Get.height;
  static double getScreenWidth() => Get.width;
  static double getHeight(double pixels) {
    double x = getScreenHeight() / pixels;

    return getScreenHeight() / x;
  }

  static double getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
