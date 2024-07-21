import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/theme/app_style.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppConstant.defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Egypt",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Alexandria",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "23",
                    ),
                    const Skills(),
                    const SizedBox(height: AppConstant.defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: AppConstant.defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "DOWNLOAD CV",
                              style: AppStyle.f18White,
                            ),
                            const SizedBox(
                                width: AppConstant.defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
