import 'package:els/presentation/splash_screen/splash_screen.dart';
import 'package:els/presentation/splash_screen/binding/splash_binding.dart';
import 'package:els/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:els/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:els/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:els/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:els/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:els/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:els/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:els/presentation/verification_code_screen/binding/verification_code_binding.dart';
import 'package:els/presentation/add_work_one_screen/add_work_one_screen.dart';
import 'package:els/presentation/add_work_one_screen/binding/add_work_one_binding.dart';
import 'package:els/presentation/categories_screen/categories_screen.dart';
import 'package:els/presentation/categories_screen/binding/categories_binding.dart';
import 'package:els/presentation/search_one_screen/search_one_screen.dart';
import 'package:els/presentation/search_one_screen/binding/search_one_binding.dart';
import 'package:els/presentation/search_two_screen/search_two_screen.dart';
import 'package:els/presentation/search_two_screen/binding/search_two_binding.dart';
import 'package:els/presentation/filter_screen/filter_screen.dart';
import 'package:els/presentation/filter_screen/binding/filter_binding.dart';
import 'package:els/presentation/profile_screen/profile_screen.dart';
import 'package:els/presentation/profile_screen/binding/profile_binding.dart';
import 'package:els/presentation/schedule_screen/schedule_screen.dart';
import 'package:els/presentation/schedule_screen/binding/schedule_binding.dart';
import 'package:els/presentation/review_booking_screen/review_booking_screen.dart';
import 'package:els/presentation/review_booking_screen/binding/review_booking_binding.dart';
import 'package:els/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:els/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:els/presentation/success_screen/success_screen.dart';
import 'package:els/presentation/success_screen/binding/success_binding.dart';
import 'package:els/presentation/bookings2_screen/bookings2_screen.dart';
import 'package:els/presentation/bookings2_screen/binding/bookings2_binding.dart';
import 'package:els/presentation/chat_screen/chat_screen.dart';
import 'package:els/presentation/chat_screen/binding/chat_binding.dart';
import 'package:els/presentation/notifications_screen/notifications_screen.dart';
import 'package:els/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:els/presentation/personal_infour_screen/personal_infour_screen.dart';
import 'package:els/presentation/personal_infour_screen/binding/personal_infour_binding.dart';
import 'package:els/presentation/elder_infour_screen/elder_infour_screen.dart';
import 'package:els/presentation/elder_infour_screen/binding/elder_infour_binding.dart';
import 'package:els/presentation/account_screen/account_screen.dart';
import 'package:els/presentation/account_screen/binding/account_binding.dart';
import 'package:els/presentation/elder_in4_detail_screen/elder_in4_detail_screen.dart';
import 'package:els/presentation/elder_in4_detail_screen/binding/elder_in4_detail_binding.dart';
import 'package:els/presentation/history_screen/history_screen.dart';
import 'package:els/presentation/history_screen/binding/history_binding.dart';
import 'package:els/presentation/history_detail_screen/history_detail_screen.dart';
import 'package:els/presentation/history_detail_screen/binding/history_detail_binding.dart';
import 'package:els/presentation/add_work_screen/add_work_screen.dart';
import 'package:els/presentation/add_work_screen/binding/add_work_binding.dart';
import 'package:els/presentation/favorites_screen/favorites_screen.dart';
import 'package:els/presentation/favorites_screen/binding/favorites_binding.dart';
import 'package:els/presentation/manage_work_news1_screen/manage_work_news1_screen.dart';
import 'package:els/presentation/manage_work_news1_screen/binding/manage_work_news1_binding.dart';
import 'package:els/presentation/settings_screen/settings_screen.dart';
import 'package:els/presentation/settings_screen/binding/settings_binding.dart';
import 'package:els/presentation/booking_details_screen/booking_details_screen.dart';
import 'package:els/presentation/booking_details_screen/binding/booking_details_binding.dart';
import 'package:els/presentation/connect_screen/connect_screen.dart';
import 'package:els/presentation/connect_screen/binding/connect_binding.dart';
import 'package:els/presentation/browse_screen/browse_screen.dart';
import 'package:els/presentation/browse_screen/binding/browse_binding.dart';
import 'package:els/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:els/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String signInScreen = '/sign_in_screen';

  static String forgotPasswordScreen = '/forgot_password_screen';

  static String signUpScreen = '/sign_up_screen';

  static String verificationCodeScreen = '/verification_code_screen';

  static String addWorkOneScreen = '/add_work_one_screen';

  static String categoriesScreen = '/categories_screen';

  static String searchOneScreen = '/search_one_screen';

  static String searchTwoScreen = '/search_two_screen';

  static String filterScreen = '/filter_screen';

  static String profileScreen = '/profile_screen';

  static String scheduleScreen = '/schedule_screen';

  static String reviewBookingScreen = '/review_booking_screen';

  static String paymentMethodScreen = '/payment_method_screen';

  static String successScreen = '/success_screen';

  static String bookings2Screen = '/bookings2_screen';

  static String chatScreen = '/chat_screen';

  static String notificationsScreen = '/notifications_screen';

  static String personalInfourScreen = '/personal_infour_screen';

  static String elderInfourScreen = '/elder_infour_screen';

  static String accountScreen = '/account_screen';

  static String elderIn4DetailScreen = '/elder_in4_detail_screen';

  static String historyScreen = '/history_screen';

  static String historyDetailScreen = '/history_detail_screen';

  static String addWorkScreen = '/add_work_screen';

  static String favoritesScreen = '/favorites_screen';

  static String manageWorkNews1Screen = '/manage_work_news1_screen';

  static String settingsScreen = '/settings_screen';

  static String bookingDetailsScreen = '/booking_details_screen';

  static String connectScreen = '/connect_screen';

  static String browseScreen = '/browse_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      bindings: [
        VerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: addWorkOneScreen,
      page: () => AddWorkOneScreen(),
      bindings: [
        AddWorkOneBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: searchOneScreen,
      page: () => SearchOneScreen(),
      bindings: [
        SearchOneBinding(),
      ],
    ),
    GetPage(
      name: searchTwoScreen,
      page: () => SearchTwoScreen(),
      bindings: [
        SearchTwoBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: scheduleScreen,
      page: () => ScheduleScreen(),
      bindings: [
        ScheduleBinding(),
      ],
    ),
    GetPage(
      name: reviewBookingScreen,
      page: () => ReviewBookingScreen(),
      bindings: [
        ReviewBookingBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: bookings2Screen,
      page: () => Bookings2Screen(),
      bindings: [
        Bookings2Binding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: personalInfourScreen,
      page: () => PersonalInfourScreen(),
      bindings: [
        PersonalInfourBinding(),
      ],
    ),
    GetPage(
      name: elderInfourScreen,
      page: () => ElderInfourScreen(),
      bindings: [
        ElderInfourBinding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: elderIn4DetailScreen,
      page: () => ElderIn4DetailScreen(),
      bindings: [
        ElderIn4DetailBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: historyDetailScreen,
      page: () => HistoryDetailScreen(),
      bindings: [
        HistoryDetailBinding(),
      ],
    ),
    GetPage(
      name: addWorkScreen,
      page: () => AddWorkScreen(),
      bindings: [
        AddWorkBinding(),
      ],
    ),
    GetPage(
      name: favoritesScreen,
      page: () => FavoritesScreen(),
      bindings: [
        FavoritesBinding(),
      ],
    ),
    GetPage(
      name: manageWorkNews1Screen,
      page: () => ManageWorkNews1Screen(),
      bindings: [
        ManageWorkNews1Binding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: bookingDetailsScreen,
      page: () => BookingDetailsScreen(),
      bindings: [
        BookingDetailsBinding(),
      ],
    ),
    GetPage(
      name: connectScreen,
      page: () => ConnectScreen(),
      bindings: [
        ConnectBinding(),
      ],
    ),
    GetPage(
      name: browseScreen,
      page: () => BrowseScreen(),
      bindings: [
        BrowseBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
