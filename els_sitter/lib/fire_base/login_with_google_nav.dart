
import 'package:els_sitter/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_sitter/presentation/login_screen/login_screen.dart';
import 'package:els_sitter/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginWithGoogleNav extends StatelessWidget{
  const LoginWithGoogleNav({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: SplashScreen());
          } else if (snapshot.hasData) {
            return BottomBarNavigation(selectedIndex: 0, isBottomNav: true);
          } else if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong!'));
          } else {
            // return OnboardingScreen();
            return LoginScreen();
          }
        },
      ),
    );
  }
}