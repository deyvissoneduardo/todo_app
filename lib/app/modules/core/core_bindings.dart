import 'package:get/get.dart';

import '../home/home_bindings.dart';
import '../splash/splash_bindings.dart';

class CoreBindings implements Bindings {
  @override
  void dependencies() {
    SplashBindings().dependencies();
    HomeBindings().dependencies();
  }
}
