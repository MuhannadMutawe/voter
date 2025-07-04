import 'package:flutter/material.dart';
import 'package:voter/core/routing/routes.dart';
import 'package:voter/feature/on_boarding_screen/ui/options_screen.dart';

import '../../feature/on_boarding_screen/ui/on_boarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.optionsScreen:
        return MaterialPageRoute(
          builder: (context) => const OptionsScreen(),
        );
      default:
        return null;
    }
  }
}
