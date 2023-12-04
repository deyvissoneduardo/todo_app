import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/core/core_bindings.dart';
import 'app/modules/splash/splash_page.dart';
import 'app/core/widgets/size_config.dart';
import 'app/routes/app_route.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: const SplashPage(),
              initialBinding: CoreBindings(),
              initialRoute: AppRoute.SPLASH,
              getPages: AppRoute.pages,
            );
          },
        );
      },
    );
  }
}
