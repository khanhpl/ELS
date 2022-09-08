import 'package:els_cus/resources/screens/login_screen/login_screen.dart';
import 'package:els_cus/resources/screens/splash_screen/navigation_screen.dart';
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
        // '/': (context) => OnboardingScreen(),
        '/': (context) => NavigationScreen(),
        '/loginScreen': (context) => LoginScreen(),
      },
    );
  }
}
