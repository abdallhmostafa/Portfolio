import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: AppConstant.defaultPadding / 2),
          child: Text(
            "Skills",
            style: AppStyle.f18White,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "Flutter",
              ),
            ),
            SizedBox(width: AppConstant.defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.72,
                label: "Firebase",
              ),
            ),
            SizedBox(width: AppConstant.defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.65,
                label: "Teaching",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
