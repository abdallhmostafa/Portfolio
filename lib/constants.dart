import 'package:flutter/material.dart';

abstract class AppConstant {
  static const primaryColor = Color(0xFFFFC107);
  static const secondaryColor = Color(0xFF242430);
  static const darkColor = Color(0xFF191923);
  static const bodyTextColor = Color(0xFF8B8B8D);
  static const bgColor = Color(0xFF000000);
  static const defaultPadding = 20.0;
  static const defaultDuration =
      Duration(seconds: 6); // we use it on our animation
  static const maxWidth = 1440.0; // max width of our web
}
