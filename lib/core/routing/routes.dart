import 'package:flutter/material.dart';
import 'package:whispertales/features/audio/view.dart';
import 'package:whispertales/features/home/view.dart';
import 'package:whispertales/features/naivBar/naiv_bar.dart';
import 'package:whispertales/features/splash/view.dart';
import 'package:whispertales/core/routing/app_routes.dart';

import '../../features/onboarding/view.dart';

class AppRoutes {
  Route? gnerateRoute(RouteSettings screen) {
    switch (screen.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
    switch (screen.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
    }
    switch (screen.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
    switch (screen.name) {
      case Routes.naivBar:
        return MaterialPageRoute(builder: (context) => const BottomNavBar());
    }
    switch (screen.name) {
      case Routes.audioScreen:
        return MaterialPageRoute(builder: (context) => const AudioScreen());
    }

    return null;
  }
}
