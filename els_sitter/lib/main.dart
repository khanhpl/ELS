
import 'package:els_sitter/fire_base/login_with_google_nav.dart';
import 'package:els_sitter/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_sitter/presentation/forgot_password_screen/change_password_screen.dart';
import 'package:els_sitter/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:els_sitter/presentation/login_screen/login_screen.dart';
import 'package:els_sitter/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:els_sitter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:els_sitter/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:els_sitter/presentation/personal_screen/personal_screen.dart';
import 'package:els_sitter/presentation/history_screen/booking_history_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // '/': (context) =>  const SplashScreen(),
        '/': (context) =>  OnboardingScreen(),
        // '/': (context) =>  LoginWithGoogleNav(),
        '/splashScreen': (context) => const SplashScreen(),
        '/loginScreen': (context) => const LoginScreen(),
        '/signUpScreen': (context) => const SignUpScreen(),
        '/forgotPasswordScreen': (context) => ForgotPasswordScreen(),
        '/changePasswordScreen': (context) => ChangePasswordScreen(),
        '/homeScreen': (context) => BottomBarNavigation(selectedIndex: 0, isBottomNav: true),
        '/loginWithGoogleNav': (context) => const LoginWithGoogleNav(),
        '/personalScreen': (context) => PersonalScreen(),
        '/hístoryScreen': (context) => HistoryBookingScreen(),
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => ChangeNotifierProvider(
//     create: (context) => GoogleSignInProvider(),
//     child: MaterialApp(
//       initialRoute: '/',
//       routes: <String, WidgetBuilder>{
//         // '/': (context) =>  const SplashScreen(),
//         '/': (context) =>  OnboardingScreen(),
//         // '/': (context) =>  LoginWithGoogleNav(),
//         '/splashScreen': (context) => const SplashScreen(),
//         '/loginScreen': (context) => const LoginScreen(),
//         '/signUpScreen': (context) => const SignUpScreen(),
//         '/forgotPasswordScreen': (context) => ForgotPasswordScreen(),
//         '/changePasswordScreen': (context) => ChangePasswordScreen(),
//         '/homeScreen': (context) => BottomBarNavigation(selectedIndex: 0, isBottomNav: true),
//         '/loginWithGoogleNav': (context) => const LoginWithGoogleNav(),
//       },
//     ),
//   );
// }
