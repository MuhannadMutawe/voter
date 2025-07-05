import 'package:flutter/material.dart';
import 'package:voter/core/routing/routes.dart';
import 'package:voter/feature/authentication/ui/log_in_screen.dart';
import 'package:voter/feature/authentication/ui/sign_up_screen.dart';
import 'package:voter/feature/home_screen/ui/home_screen.dart';
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
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
