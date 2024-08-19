import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: AppConstant.defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: Responsive.isMobileSmall(context) ? 0.5 : 0.6,
          ),
          mobileLarge:
              const ProjectsGridView(childAspectRatio: 0.6, crossAxisCount: 1),
          tablet: const ProjectsGridView(childAspectRatio: 0.6),
          desktop: const ProjectsGridView(
            childAspectRatio: 0.6,
          ),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: elRabieyProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: AppConstant.defaultPadding,
        mainAxisSpacing: AppConstant.defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: elRabieyProjects[index],
      ),
    );
  }
}
