import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/controller/forgot_password_controller.dart';
import 'package:social_media_app/Screen/auth/login_screen/controller/login_controller.dart';
import 'package:social_media_app/Screen/auth/login_screen/view/login_view.dart';
import 'package:social_media_app/Screen/auth/new_password/controller/new_password_controller.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/Screen/auth/verification_screen/controller/otp_controller.dart';

void main() {
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ScreenLogin(),
      ),
    );
  }
}
