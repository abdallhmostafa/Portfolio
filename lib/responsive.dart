import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  // Define constants for screen width thresholds
  static const int mobileThreshold = 500;
  static const int mobileLargeThreshold = 700;
  static const int tabletThreshold = 1024;

  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.mobileLarge,
    this.tablet,
    required this.desktop,
  });

  // Helper methods to determine the device type
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileThreshold;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= mobileLargeThreshold;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletThreshold;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletThreshold;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width >= tabletThreshold) {
      return desktop;
    } else if (width >= mobileLargeThreshold && tablet != null) {
      return tablet!;
    } else if (width >= mobileThreshold && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
