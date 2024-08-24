import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/screens/leading/heighlights_section/widgets/heighlight_text.dart';
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
        HeighlightText(
          counter: AnimatedCounter(
            value: 2,
            text: "+",
          ),
          label: "Teaching years",
        ),
        HeighlightText(
          counter: AnimatedCounter(
            value: 2,
            text: "+",
          ),
          label: "Flutter Developer years",
        ),
        HeighlightText(
          counter: AnimatedCounter(
            value: 4,
            text: "+",
          ),
          label: "Coding years",
        ),
   
      ],
    );
  }
}
