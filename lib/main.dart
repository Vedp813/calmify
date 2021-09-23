import 'package:calmify_/appointment/appointment.dart';
import 'package:calmify_/booked/booked.dart';
import 'package:calmify_/home/home.dart';
import 'package:calmify_/login/auth_screen.dart';
import 'package:calmify_/nav_bar.dart';
import 'search/search.dart';
import 'package:calmify_/videocall/call.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calmify',
         home:

        StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (ctx, userSanpShot) {
            if (userSanpShot.hasData) {
              return NavBar();
            }
            return AuthScreen();
          },
        ));

  }
}
