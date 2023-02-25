import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/sign_up_screen/controller/sign_up_controller.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/TextFormFieldWidget/text_form_field_widget.dart';

class ScreenSignUP extends StatelessWidget {
  const ScreenSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Consumer<SignUPController>(
          builder: (context, value, child) => Column(
            children: [
              SizedBox(
                height: heigth * 0.1,
              ),
              const Text(
                'Sign Up',
                style: authTextStyle,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.5,
                    child: TextFormFieldWidget(
                      controller: value.firstnamecontroller,
                      validator: (name) {
                        return value.usernameValidation(name);
                      },
                      labelText: 'Fast Name',
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: TextFormFieldWidget(
                      controller: value.lastnamecontroller,
                      validator: (name) {
                        return value.usernameValidation(name);
                      },
                      labelText: 'Last Name',
                      keyboardType: TextInputType.name,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
