import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/core/const_color.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: Consumer<SignUPController>(
        builder: (context, value, child) => SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('home page'),
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
