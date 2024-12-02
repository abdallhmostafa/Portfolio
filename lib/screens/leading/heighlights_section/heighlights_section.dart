import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/leading/heighlights_section/widgets/heighlight_text.dart';

import '../../../constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppConstant.defaultPadding,
          horizontal: AppConstant.defaultPadding * 2),
      child: !Responsive.isMobileLarge(context)
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighlightText(
                      counter: AnimatedCounter(
                        value: 1000,
                        text: "+",
                      ),
                      label: "Connections in LinkedIn",
                    ),
                    HeighlightText(
                      counter: AnimatedCounter(
                        value: 9,
                        text: "+",
                      ),
                      label: "Posts in LinkedIn",
                    ),
                  ],
                ),
                SizedBox(height: AppConstant.defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighlightText(
                      counter: AnimatedCounter(
                        value: 9,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighlightText(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : const Column(
              children: [
                HeighlightText(
                  counter: AnimatedCounter(
                    value: 1000,
                    text: "+",
                  ),
                  label: "Connections in LinkedIn",
                ),
                HeighlightText(
                  counter: AnimatedCounter(
                    value: 9,
                    text: "+",
                  ),
                  label: "Posts in LinkedIn",
                ),
                HeighlightText(
                  counter: AnimatedCounter(
                    value: 9,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighlightText(
                  counter: AnimatedCounter(
                    value: 2,
                    text: "+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
