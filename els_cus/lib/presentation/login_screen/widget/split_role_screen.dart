import 'package:els_cus_mobile/blocs/login_bloc.dart';
import 'package:els_cus_mobile/presentation/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:els_cus_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplitRoleScreen extends StatefulWidget {
  User user;
  SplitRoleScreen({super.key, required this.user});
  @override
  State<SplitRoleScreen> createState() => _SplitRoleScreenState(user: this.user);
}

class _SplitRoleScreenState extends State<SplitRoleScreen> {
  User user;
  _SplitRoleScreenState({required this.user});


  @override
  Widget build(BuildContext context) {
    Future<bool> loginFuture = LoginBloc().checkCurGmailUser(user.email!, user.displayName!, "", "");
    return Material(
      child: FutureBuilder<bool>(
        future: loginFuture,
          builder: (context, snapshot){
            if (snapshot.hasError) print(snapshot.error);
            if (snapshot.hasData) {
            if(snapshot.data!){
                return BottomBarNavigation(selectedIndex: 0, isBottomNav: true);
              }else{
                return const SplashScreen();
              }
            } else {
              return  const SplashScreen();
            }
          },
        ),
    );
    // TODO: implement build
  }
}
