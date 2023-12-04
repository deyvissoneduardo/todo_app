import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/images_path.dart';
import '../../core/widgets/size_config.dart';
import '../../routes/app_route.dart';
import '../home/home_page.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedOpacity(
        opacity: controller.animationOpacityLogo.value,
        duration: const Duration(seconds: 3),
        curve: Curves.easeIn,
        onEnd: () => Get.offAndToNamed(AppRoute.HOME),
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          color: Colors.white,
          width: controller.logoAnimetionWidth,
          height: controller.logoAnimetionHeight,
          curve: Curves.linearToEaseOut,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Image.asset(
            ImagesPath.SPLASH,
            height: 40 * SizeConfig.heightMultiplier,
          ),
        ),
      );
    });
  }
}
