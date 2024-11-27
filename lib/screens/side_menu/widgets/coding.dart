import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(bottom: AppConstant.defaultPadding / 2),
          child: Text(
            "Coding",
            style: AppStyle.f18White,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: _skills.map((e) {
                return TyperAnimatedText(
                  e,
                  speed: const Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      color: AppConstant.primaryColor, fontSize: 24),
                );
              }).toList(),
            ),
          ],
        )
        // AnimatedLinearProgressIndicator(
        //   percentage: 0.68,
        //   label: "C++",
        // ),
      ],
    );
  }
}

const List<String> _skills = [
  "Dart",
  "C++",
  "Java",
  "OOP",
  "SOLID Principles",
  "Data Structures",
  "Algorithms",
  "Design Patterns",
  "Problem Solving",
];
