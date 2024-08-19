import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/screens/main/main_screen.dart';

import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        // Recommendations(),
        SizedBox(height: 30),
      ],
    );
  }
}