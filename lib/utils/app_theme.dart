import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

abstract class AppTheme {
  static dartTheme(BuildContext context) => ThemeData.dark().copyWith(
        primaryColor: AppConstant.primaryColor,
        scrollbarTheme: ScrollbarThemeData(
            interactive: true,
            thickness: WidgetStateProperty.all(8),
            thumbColor: WidgetStateProperty.all(AppConstant.primaryColor),
            thumbVisibility: WidgetStateProperty.all(true),
            radius: const Radius.circular(AppConstant.defaultRadius),
            minThumbLength: 2,
            mainAxisMargin: 5,
            crossAxisMargin: 0),
        tooltipTheme: TooltipThemeData(
          textStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
        ),
        scaffoldBackgroundColor: AppConstant.bgColor,
        canvasColor: AppConstant.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
      );
}
