import 'package:get/get.dart';

import '../modules/home/home_bindings.dart';
import '../modules/home/home_page.dart';
import '../modules/notifications/notifications_bindings.dart';
import '../modules/notifications/notifications_page.dart';
import '../modules/splash/splash_bindings.dart';
import '../modules/splash/splash_page.dart';

sealed class AppRoute {
  static const SPLASH = '/';
  static const HOME = '/home';
  static const NOTIFICATION = '/notifications';

  static List<GetPage> get pages => <GetPage>[
        GetPage(
          name: SPLASH,
          page: () => const SplashPage(),
          binding: SplashBindings(),
        ),
        GetPage(
          name: HOME,
          page: () => const HomePage(),
          binding: HomeBindings(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 450),
        ),
        GetPage(
          name: NOTIFICATION,
          page: () => const NotificationsPage(),
          binding: NotificationsBindings(),
        ),
      ];
}
