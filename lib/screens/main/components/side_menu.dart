import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

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
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(AppConstant.defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Egypt",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Alexandria",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "23",
                    ),
                    Skills(),
                    SizedBox(height: AppConstant.defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: AppConstant.defaultPadding / 2),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         const Text(
                    //           "DOWNLOAD CV",
                    //           style: AppStyle.f18White,
                    //         ),
                    //         const SizedBox(
                    //             width: AppConstant.defaultPadding / 2),
                    //         SvgPicture.asset("assets/icons/download.svg")
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
