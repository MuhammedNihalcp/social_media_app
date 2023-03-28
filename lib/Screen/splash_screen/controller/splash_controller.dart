import 'dart:async';

import 'package:flutter/material.dart';


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
