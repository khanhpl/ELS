import 'package:els_cus/resources/screens/onboarding_screen/onboarding_screen.dart';
import 'package:els_cus/resources/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedSplashScreen(
      splash: SplashScreen(),
      nextScreen: OnboardingScreen(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 2000,
    );
  }
}
