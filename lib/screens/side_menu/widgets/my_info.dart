import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components/url_luncher.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/theme/app_style.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isSemiDesktop(context)
          ? 0.9
          : Responsive.isMobileSmall(context)
              ? 0.63
              : 0.8,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/images/me_2.png"),
            ),
            const Text(
              "Abdallh Mostafa elRabiey",
              style: AppStyle.f18White,
            ),
            const Text(
              "Software Engineering &\nJunior Flutter Developer ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: AppConstant.defaultPadding),
              color: const Color(0xFF24242E),
              child: Responsive.isMobileSmall(context)
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                urlLauncher(Uri(
                                  scheme: 'https',
                                  host: 'www.linkedin.com',
                                  path: 'in/abdallh-mostafa-elrabiey',
                                ));
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/linkedon_svg.svg",
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                urlLauncher(Uri(
                                  scheme: 'https',
                                  host: 'github.com',
                                  path: 'abdallhmostafa',
                                ));
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/github_svg.svg"),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                urlLauncher(Uri(
                                  scheme: 'mailto',
                                  path: 'abdallhelrabiey255@gmail.com',
                                  query:
                                      encondeQueryParameters(<String, String>{
                                    'subject':
                                        "Hello Abdallh Mostafa elRabiey, I'm Happy to Contact You",
                                  }),
                                ));
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/gmail_svg.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                urlLauncher(Uri(
                                  scheme: 'https',
                                  host: 'wa.me',
                                  path: '201006257074',
                                ));
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/whatsapp_svg.svg"),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            urlLauncher(Uri(
                              scheme: 'https',
                              host: 'www.linkedin.com',
                              path: 'in/abdallh-mostafa-elrabiey',
                            ));
                          },
                          icon:
                              SvgPicture.asset("assets/icons/linkedon_svg.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            urlLauncher(Uri(
                              scheme: 'https',
                              host: 'github.com',
                              path: 'abdallhmostafa',
                            ));
                          },
                          icon: SvgPicture.asset("assets/icons/github_svg.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            urlLauncher(Uri(
                              scheme: 'mailto',
                              path: 'abdallhelrabiey255@gmail.com',
                              query: encondeQueryParameters(<String, String>{
                                'subject':
                                    "Hello Abdallh Mostafa elRabiey, I'm Happy to Contact You",
                              }),
                            ));
                          },
                          icon: SvgPicture.asset("assets/icons/gmail_svg.svg"),
                        ),
                        IconButton(
                          onPressed: () {
                            urlLauncher(Uri(
                              scheme: 'https',
                              host: 'wa.me',
                              path: '201006257074',
                            ));
                          },
                          icon:
                              SvgPicture.asset("assets/icons/whatsapp_svg.svg"),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
