import 'package:els_cus_mobile/fire_base/provider/google_sign_in_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String str = "Hello Khanh";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      if(FirebaseAuth.instance.currentUser != null){
        str = FirebaseAuth.instance.currentUser!.displayName.toString();
      }

    });

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("ACCOUNT PAGE"),
      ),
      body: Material(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Text(
              str,
              ),
              const SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.logout();

                      Navigator.pushNamed(context, '/loginWithGoogleNav');
                    });
                  },
                  child: const Text("Log out"),
                ),
              ),

            ],
          )

        ),
      ),
    );
  }
}
