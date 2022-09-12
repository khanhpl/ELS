
import 'package:els_cus_mobile/presentation/login_screen/login_screen.dart';
import 'package:els_cus_mobile/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:els_cus_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) =>  OnboardingScreen(),
        '/splashScreen': (context) => const SplashScreen(),
        '/loginScreen': (context) => LoginScreen(),
      },
    );
  }
}
