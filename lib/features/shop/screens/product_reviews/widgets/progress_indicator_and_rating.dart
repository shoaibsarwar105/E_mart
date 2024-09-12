import 'package:flutter/material.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/device/device-utility.dart';

class BRatingProgressIndicator extends StatelessWidget {
  const BRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex:1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(flex: 11,
          child: SizedBox(
            width: BDeviceUtils.getScreenWidth(context)*0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: BColors.grey,
              valueColor: const AlwaysStoppedAnimation(BColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}