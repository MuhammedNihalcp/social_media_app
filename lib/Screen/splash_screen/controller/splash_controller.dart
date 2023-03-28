import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../auth/login_screen/view/login_view.dart';
import '../../bottom_nav/bottom_nav.dart';

class SplashController extends ChangeNotifier {
  void splashTimer() {
    Timer(const Duration(seconds: 3), () {
      // StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     log('hello');
      //     if (snapshot.hasData) {
      //       log('ag');
      //       Navigator.of(context).pushReplacement(MaterialPageRoute(
      //         builder: (context) => const BottomNav(),
      //       ));
      //       return const BottomNav();
      //     } else {
      //       log('ag1');
      //       Navigator.of(context).pushReplacement(MaterialPageRoute(
      //         builder: (context) => ScreenLogin(),
      //       ));
      //       return ScreenLogin();
      //     }
      //   },
      // );
    });
  }
}
