import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxDouble scale = 10.0.obs;
  RxDouble animationOpacityLogo = 0.0.obs;

  double get logoAnimetionWidth => 100 * scale.value;
  double get logoAnimetionHeight => 120 * scale.value;

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      animationOpacityLogo.value = 1.0;
      scale.value = 1;
    });
    super.onInit();
  }
}
