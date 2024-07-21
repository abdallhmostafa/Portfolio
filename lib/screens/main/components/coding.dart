import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: AppConstant.defaultPadding/2),
          child: Text(
            "Coding",
            style: AppStyle.f18White,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.72,
          label: "Java",
        ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.75,
        //   label: "Data Structures",
        // ),
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.58,
        //   label: "SOILD Principles",
        // ),
      ],
    );
  }
}
