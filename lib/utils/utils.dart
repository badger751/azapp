import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      textColor: Colors.black,
    );
  }
}
