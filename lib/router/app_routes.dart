import 'package:flutter/material.dart';

import '../screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'listview1',
        name: 'ListView 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_outlined),
    MenuOptions(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOptions(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOptions(
        route: 'circle_avatar',
        name: 'Circle Avatar',
        screen: const CircleAvatarPerson(),
        icon: Icons.person_pin),
    MenuOptions(
        route: 'animated_screen',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.tv),
    MenuOptions(
        route: 'input',
        name: 'Text Inputs',
        screen: const InputScreen(),
        icon: Icons.forum_rounded),
    MenuOptions(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.ac_unit_outlined),
    MenuOptions(
        route: 'listviewbuilder',
        name: 'InfiniteScroll && Pull to refresh',
        screen: const ListviewBuilderScreen(),
        icon: Icons.build),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (context) => const HomeScreen()});
    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
