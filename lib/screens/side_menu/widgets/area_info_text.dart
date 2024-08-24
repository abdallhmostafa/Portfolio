import 'package:flutter/material.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    this.title,
    this.text,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstant.defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Flexible(
            child: Text(
              text!,
              // maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
