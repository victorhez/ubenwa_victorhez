import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/onboarding_1_screen/onboarding_1_screen.dart';
import '../presentation/onboarding_screen_2_screen/onboarding_screen_2_screen.dart';
import '../presentation/onboarding_screen_third_screen/onboarding_screen_third_screen.dart';
import '../presentation/onboarding_screen_fourth_screen/onboarding_screen_fourth_screen.dart';
import '../presentation/setup_screen/setup_screen.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/calander_screen/calander_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboarding1Screen = '/onboarding_1_screen';

  static const String onboardingScreen2Screen = '/onboarding_screen_2_screen';

  static const String onboardingScreenThirdScreen =
      '/onboarding_screen_third_screen';

  static const String onboardingScreenFourthScreen =
      '/onboarding_screen_fourth_screen';

  static const String setupScreen = '/setup_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String calanderScreen = '/calander_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboarding1Screen: Onboarding1Screen.builder,
        onboardingScreen2Screen: OnboardingScreen2Screen.builder,
        onboardingScreenThirdScreen: OnboardingScreenThirdScreen.builder,
        onboardingScreenFourthScreen: OnboardingScreenFourthScreen.builder,
        setupScreen: SetupScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        calanderScreen: CalanderScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
