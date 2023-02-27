import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/Screen/auth/forget_password/view/widget/forgot_screens_head_text.dart';
import 'package:social_media_app/Screen/auth/new_password/view/new_password_view.dart';
import 'package:social_media_app/Screen/auth/verification_screen/controller/otp_controller.dart';
import 'package:social_media_app/core/const_color.dart';
import 'package:social_media_app/core/const_style.dart';
import 'package:social_media_app/util/auth_head_text/auth_head_text.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    super.key,
    required this.width,
    required this.height,
  });

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: authbackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Consumer<OtpController>(
            builder: (context, value, child) => Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                const AuthHeadText(text: 'Email Verification'),
                SizedBox(
                  height: height * 0.1,
                ),
                const ForgotScreensHeadText(text: 'Get Your Code'),
                kheight20,
                const Text(
                  'Please enter the 4 digit code that send to your email address.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorWhith,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                kheight20,
                OtpTextField(
                  textStyle: const TextStyle(color: Colors.black),
                  numberOfFields: 4,
                  borderColor: colorWhith,
                  enabledBorderColor: authbuttoncolor,
                  focusedBorderColor: colorWhith,
                  fieldWidth: width * 0.15,
                  borderRadius: BorderRadius.circular(12),
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode) {
                    value.onSubmitCode(verificationCode);
                    // data.sumbitOtp(value.phoneNo.text, context);
                  },
                ),
                kheight20,
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(authbuttoncolor),
                    fixedSize: MaterialStateProperty.all(
                      Size(width * 0.8, height * 0.08),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ScreenNewPassword(width: width, height: height),
                      ),
                    );
                  },
                  child: const Text(
                    'Verify and Proceed',
                    style: authButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
