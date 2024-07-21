import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppConstant.defaultPadding,
          horizontal: AppConstant.defaultPadding * 2),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 800,
                        text: "+",
                      ),
                      label: "Connections in LinkedIn",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 8,
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
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 8,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
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
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 800,
                    text: "+",
                  ),
                  label: "Connections in LinkedIn",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 8,
                    text: "+",
                  ),
                  label: "Posts in LinkedIn",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 8,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighLight(
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
