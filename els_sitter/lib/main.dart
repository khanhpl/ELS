
import 'package:els_sitter/fire_base/login_with_google_nav.dart';
import 'package:els_sitter/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_sitter/presentation/forgot_password_screen/change_password_screen.dart';
import 'package:els_sitter/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:els_sitter/presentation/login_screen/login_screen.dart';
import 'package:els_sitter/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:els_sitter/presentation/personal_screen/widget/service_and_certificate_screen.dart';
import 'package:els_sitter/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:els_sitter/presentation/splash_screen/splash_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:els_sitter/presentation/setting_screen/setting_screen.dart';
import 'package:els_sitter/presentation/history_screen/booking_history_screen.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/utils/globals.dart' as globals;
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
}

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;

Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  /// Create an Android Notification Channel.
  ///
  /// We use this channel in the `AndroidManifest.xml` file to override the
  /// default FCM channel to enable heads up notifications.
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  /// Update the iOS foreground notification presentation options to allow
  /// heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}

void showFlutterNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null && !kIsWeb) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          // TODO add a proper drawable resource to android, for now using
          //      one that already exists in example app.
          icon: 'launch_background',
        ),
      ),
    );
  }
}

void showFlutterNotificationForgeround(RemoteMessage message) {
  print(message.data);
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null && !kIsWeb) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title!,
      notification.body!,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          // TODO add a proper drawable resource to android, for now using
          //      one that already exists in example app.
          icon: 'launch_background',
        ),
      ),
    );
  }
}

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  if (!kIsWeb) {
    await setupFlutterNotifications();
  }

  String? token = await FirebaseMessaging.instance.getToken();
  globals.DeviceToken = token.toString();
  print('token');
  print(token);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseMessaging.onMessage.listen(showFlutterNotificationForgeround);

  }
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
        '/historyScreen': (context) => const HistoryBookingScreen(),
        '/scheduleScreen':(context) => BottomBarNavigation(selectedIndex: 1, isBottomNav: true),
        '/ServiceAndCertificateScreen': (context) => ServiceAndSertificateScreen(),
        '/settingScreen': (context) => SettingScreen(),
        '/accountScreen':(context) => BottomBarNavigation(selectedIndex: 4, isBottomNav: true),
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
