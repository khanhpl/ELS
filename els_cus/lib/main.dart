
import 'package:els_cus_mobile/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_cus_mobile/presentation/forgot_password_screen/change_password_screen.dart';
import 'package:els_cus_mobile/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:els_cus_mobile/presentation/login_screen/login_screen.dart';
import 'package:els_cus_mobile/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:els_cus_mobile/presentation/sign_up_screen/sign_up_screen.dart';
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
        // '/': (context) =>  const SplashScreen(),
        '/': (context) =>  OnboardingScreen(),
        '/splashScreen': (context) => const SplashScreen(),
        '/loginScreen': (context) => LoginScreen(),
        '/signUpScreen': (context) => const SignUpScreen(),
        '/forgotPasswordScreen': (context) => ForgotPasswordScreen(),
        '/changePasswordScreen': (context) => ChangePasswordScreen(),
        '/homeScreen': (context) => BottomBarNavigation(selectedIndex: 0, isBottomNav: true),
      },
    );
  }
}
