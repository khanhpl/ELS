import 'package:els_cus_mobile/fire_base/login_with_google_nav.dart';
import 'package:els_cus_mobile/fire_base/provider/google_sign_in_provider.dart';
import 'package:els_cus_mobile/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_cus_mobile/presentation/elder_screen/add_new_elder_screen.dart';
import 'package:els_cus_mobile/presentation/elder_screen/elder_screen.dart';
import 'package:els_cus_mobile/presentation/forgot_password_screen/change_password_screen.dart';
import 'package:els_cus_mobile/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:els_cus_mobile/presentation/history_screen/booking_history_screen.dart';
import 'package:els_cus_mobile/presentation/login_screen/login_screen.dart';
import 'package:els_cus_mobile/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:els_cus_mobile/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:els_cus_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:els_cus_mobile/presentation/personal_information_screen/personal_screen.dart';
import 'package:els_cus_mobile/presentation/setting_screen/setting_screen.dart';
import 'package:els_cus_mobile/presentation/change_password_screen/change_password_screen.dart';
import 'package:els_cus_mobile/presentation/account_screen/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          initialRoute: '/',
          routes: <String, WidgetBuilder>{
            // '/': (context) =>  const SplashScreen(),
            '/': (context) => OnboardingScreen(),
            // '/': (context) =>  LoginWithGoogleNav(),
            '/splashScreen': (context) => const SplashScreen(),
            '/loginScreen': (context) => const LoginScreen(),
            '/signUpScreen': (context) => const SignUpScreen(),
            '/forgotPasswordScreen': (context) => ForgotPasswordScreen(),
            '/changePasswordScreen': (context) => ChangePasswordScreen(),
            '/homeScreen': (context) =>
                BottomBarNavigation(selectedIndex: 0, isBottomNav: true),
            '/loginWithGoogleNav': (context) => const LoginWithGoogleNav(),
            '/elderScreen': (context) => ElderScreen(),
            '/addNewElderScreen': (context) => AddNewElderScreen(),
            // '/personalScreen': (context) => PersonalScreen(),
            '/historyScreen': (context) => HistoryBookingScreen(),
            '/scheduleScreen': (context) =>
                BottomBarNavigation(selectedIndex: 1, isBottomNav: true),
            '/accountScreen': (context) =>
                BottomBarNavigation(selectedIndex: 4, isBottomNav: true),
            '/settingScreen': (context) => SettingScreen(),
          },
        ),
      );
}
