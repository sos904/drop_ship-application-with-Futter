import 'package:drop_ship/common/widgets/bottom_bar.dart';
import 'package:drop_ship/features/account/screens/account_screen.dart';
import 'package:drop_ship/features/address/screens/address_screen.dart';
import 'package:drop_ship/features/admin/screens/admin_screen.dart';
import 'package:drop_ship/features/cart/screens/cart_screen.dart';
import 'package:drop_ship/features/home/screens/home_screen.dart';
import 'package:drop_ship/features/new_auth/new_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        //if user is logged in
        if (snapshot.hasData) {
          return HomeScreen();
        }
        // if user is not logged in
        else {
          return LoginPage();
        }
      }),
    ));
  }
}
