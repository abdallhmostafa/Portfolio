import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/leading/summary_section/summary_section.dart';

import 'heighlights_section/heighlights_section.dart';
import 'widgets/home_banner.dart';
import 'my_projects_section/my_projects.dart';

class LeadingScreen extends StatelessWidget {
  const LeadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        SummarySection(),
        MyProjects(),
        // Recommendations(),
        SizedBox(height: 30),
      ],
    );
  }
}
