import 'package:els_cus_mobile/core/utils/color_constant.dart';
import 'package:els_cus_mobile/core/utils/image_constant.dart';
import 'package:els_cus_mobile/presentation/account_screen/account_screen.dart';
import 'package:els_cus_mobile/presentation/add_work_screen/add_work_screen.dart';
import 'package:els_cus_mobile/presentation/home_screen/home_screen.dart';
import 'package:els_cus_mobile/presentation/notifications_screen/notifications_screen.dart';
import 'package:els_cus_mobile/presentation/schedule_screen/schedule_screen.dart';
import 'package:els_cus_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBarNavigation extends StatefulWidget {
  int selectedIndex = 0;

  bool isBottomNav = true;

  BottomBarNavigation(
      {super.key, required this.selectedIndex, required this.isBottomNav});

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState(
      selectedIndex: selectedIndex, isBottomNav: isBottomNav);
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int selectedIndex = 0;
  bool isBottomNav = true;
  _BottomBarNavigationState(
      {required this.selectedIndex, required this.isBottomNav});

  Widget pageCaller(index) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ScheduleScreen();
      case 2:
        return const AddWorkScreen();
      case 3:
        return const NotificationsScreen();
      case 4:
        return const AccountScreen();

      default:
        return const SplashScreen();
    }
  }

  // void getTokenFCM() async {
  //   String? token = await FirebaseMessaging.instance.getToken();
  //   setState(() {
  //     _token = token;
  //   });
  // }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Future<void> setupInteractedMessage() async {
  //   // Get any messages which caused the application to open from
  //   // a terminated state.
  //   RemoteMessage? initialMessage =
  //   await FirebaseMessaging.instance.getInitialMessage();
  //
  //   // If the message also contains a data property with a "type" of "chat",
  //   // navigate to a chat screen
  //   if (initialMessage != null) {
  //     _handleMessage(initialMessage);
  //   }
  //
  //   // Also handle any interaction when the app is in the background via a
  //   // Stream listener
  //   FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  // }
  // void _handleMessage(RemoteMessage message) {
  //   _messages = [..._messages, message];
  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen(messages: _messages,token: _token,)));
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //
  //   getTokenFCM();
  //   setupInteractedMessage();
  //
  //   FirebaseMessaging.onMessage.listen((event) {
  //     LocalNotificationService.showNotificationsOnForeground(event);
  //     _messages = [..._messages, event];
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: pageCaller(selectedIndex),
      bottomNavigationBar: isBottomNav == true
          ? ConvexAppBar(
              height: size.height * 0.09,
              style: TabStyle.react,
              backgroundColor: Colors.white,
              color: Colors.grey[700],
              activeColor: ColorConstant.purple900,
              onTap: _onItemTapped,
              initialActiveIndex: selectedIndex,
              top: -15,

              curveSize: 65,
              items: [
                TabItem(
                  icon:ImageIcon(
                    AssetImage(ImageConstant.imgHome24X20),
                  ),
                  activeIcon: ImageIcon(
                    AssetImage(ImageConstant.imgHome24X20),
                    color: ColorConstant.purple900,
                  ),
                  title: 'Trang ch???\n',
                ),
                TabItem(
                  icon:ImageIcon(
                    AssetImage(ImageConstant.imgTicket),
                  ),
                  activeIcon: ImageIcon(
                    AssetImage(ImageConstant.imgTicket),
                    color: ColorConstant.purple900,
                  ),
                  title: 'L???ch tr??nh\n',
                ),
                const TabItem(
                  icon: Icons.add,
                  title: 'T???o m???i\n',
                ),
                TabItem(
                  icon: ImageIcon(
                    AssetImage(ImageConstant.imgNotification),
                  ),
                  activeIcon: ImageIcon(
                    AssetImage(ImageConstant.imgNotification),
                    color: ColorConstant.purple900,
                  ),
                  title: 'Th??ng b??o\n',
                ),
                TabItem(
                  icon: ImageIcon(
                    AssetImage(ImageConstant.imgUser),
                  ),
                  activeIcon: ImageIcon(
                    AssetImage(ImageConstant.imgUser),
                    color: ColorConstant.purple900,
                  ),
                  title: 'T??i kho???n\n',
                ),
              ],
            )
          : Container(
              height: 0,
            ),
    );
  }
}
