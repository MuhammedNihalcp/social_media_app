import 'dart:developer';

import 'package:flutter/material.dart';

class OtpController extends ChangeNotifier {
  String code = '';

  void onSubmitCode(String submitCode) {
    log(submitCode, name: 'submitcode');
    code = submitCode;
    notifyListeners();
  }
}
