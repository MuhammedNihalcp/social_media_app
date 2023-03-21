import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUPController>(
        builder: (context, value, child) => SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('home page'),
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
