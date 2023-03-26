import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/controller/forgot_password_controller.dart';
import 'package:social_media_app/Screen/auth/login_screen/controller/login_controller.dart';
import 'package:social_media_app/Screen/auth/login_screen/view/login_view.dart';
import 'package:social_media_app/Screen/auth/new_password/controller/new_password_controller.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/Screen/auth/verification_screen/controller/otp_controller.dart';
import 'package:social_media_app/Screen/bottom_nav/bottom_nav.dart';
import 'package:social_media_app/Screen/bottom_nav/controller/bottom_nav_controller.dart';
import 'package:social_media_app/Screen/home/view/home_view.dart';
import 'package:social_media_app/Screen/search_screen/controller/search_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SignUPController()),
        ChangeNotifierProvider(create: (context) => LoginController()),
        ChangeNotifierProvider(create: (context) => ForgotController()),
        ChangeNotifierProvider(create: (context) => OtpController()),
        ChangeNotifierProvider(create: (context) => NewPasswordController()),
        ChangeNotifierProvider(create: (context) => BottomNavContoller()),
        ChangeNotifierProvider(create: (context) => SearchController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const BottomNav();
            } else {
              return ScreenLogin();
            }
          },
        ),
      ),
    );
  }
}
