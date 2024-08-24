import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/app_style.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.only(bottom: AppConstant.defaultPadding / 2),
          child: Text(
            "Knowledges",
            style: AppStyle.f18White,
          ),
        ),
        KnowledgeText(text: "State Management, localization"),
        KnowledgeText(text: "Caching, CI/CD, Unit Testing"),
        KnowledgeText(text: "OOP, Data Structure, Algorithm"),
        KnowledgeText(text: "SOLID Principles, Design Patterns"),
        KnowledgeText(text: "Clean Architecture, TDD"),
        KnowledgeText(text: "GIT, Firebase, REST API, SQL, NoSQL"),
        KnowledgeText(text: "Agile development methodologies"),
        KnowledgeText(text: "Teaching and Instruction "),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstant.defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: AppConstant.defaultPadding / 2),
          Flexible(child: Text(text)),
        ],
      ),
    );
  }
}
