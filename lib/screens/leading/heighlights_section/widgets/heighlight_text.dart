import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../../../constants.dart';

class HeighlightText extends StatelessWidget {
  const HeighlightText({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: AppConstant.defaultPadding / 2),
        Responsive.isMobileSmall(context)
            ? Flexible(
                child:
                    Text(label!, style: Theme.of(context).textTheme.titleSmall))
            : Text(label!, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
