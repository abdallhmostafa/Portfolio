import 'package:flutter/material.dart';
import 'package:portfolio/components/url_luncher.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/screens/leading/my_projects_section/widgets/project_slider_card.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstant.defaultPadding),
      decoration: const BoxDecoration(
        color: AppConstant.secondaryColor,
        borderRadius:
            BorderRadius.all(Radius.circular(AppConstant.defaultRadius)),
      ),
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
          SelectableText(
            project.description!,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          ProjectSliderCard(projectImage: project.images),
          const Spacer(),
          TextButton(
            onPressed: () {
              urlLauncher(Uri(
                scheme: 'https',
                host: 'www.github.com',
                path: project.link ?? '',
              ));
            },
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
