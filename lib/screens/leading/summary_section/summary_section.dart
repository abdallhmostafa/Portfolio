import 'package:flutter/material.dart';

import '../../../constants.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Who am I",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: AppConstant.defaultPadding),
          Container(
            padding: const EdgeInsets.all(AppConstant.defaultPadding),
            decoration: const BoxDecoration(
              color: AppConstant.secondaryColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppConstant.defaultRadius)),
            ),
            child: Text(
              AppConstant.summaryInfo,
              softWrap: true,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: AppConstant.defaultPadding),
        ],
      ),
    );
  }
}
