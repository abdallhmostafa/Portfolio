import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/url_luncher.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/leading/widgets/bg_slider_banner.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)
          ? (Responsive.isMobileSmall(context) ? 1.3 : 2.1)
          : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const BgSliderBanner(),
          const DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 25, 35, 0.6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppConstant.defaultRadius),
                bottomLeft: Radius.circular(AppConstant.defaultRadius),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConstant.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: AppConstant.defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: AppConstant.defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      urlLauncher(Uri(
                        scheme: 'https',
                        host: 'www.linkedin.com',
                        path: 'in/abdallh-mostafa-elrabiey',
                      ));
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppConstant.defaultPadding * 2,
                          vertical: AppConstant.defaultPadding),
                      backgroundColor: AppConstant.primaryColor,
                    ),
                    child: const Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: AppConstant.darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleSmall!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: AppConstant.defaultPadding / 2),
          const Text("I build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText(isMobile: true))
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: AppConstant.defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key, this.isMobile = false});
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive Mobile Apps.",
            speed: const Duration(milliseconds: 60),
            textStyle: isMobile
                ? const TextStyle(color: AppConstant.primaryColor)
                : null),
        TyperAnimatedText("Complete Midical App",
            speed: const Duration(milliseconds: 80),
            textStyle: isMobile
                ? const TextStyle(color: AppConstant.primaryColor)
                : null),
        TyperAnimatedText("Chat app",
            speed: const Duration(milliseconds: 60),
            textStyle: isMobile
                ? const TextStyle(color: AppConstant.primaryColor)
                : null),
        TyperAnimatedText("E-commerce App",
            speed: const Duration(milliseconds: 60),
            textStyle: isMobile
                ? const TextStyle(color: AppConstant.primaryColor)
                : null),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: AppConstant.primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
