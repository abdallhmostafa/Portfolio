import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstant.defaultPadding),
      color: AppConstant.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.f18White,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Read More >>",
              style: TextStyle(color: AppConstant.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
