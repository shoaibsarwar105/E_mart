
import 'package:beautybonenza/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';


class BFormDivider extends StatelessWidget {
  const BFormDivider({
    super.key,
    required this.dividerText,
  });
final String dividerText;


  @override
  Widget build(BuildContext context) {
    final dark=BHelperFunction.isDark(context);
    return Row(
      children: [
        Flexible(
            child: Divider(
              color: dark ? BColors.darkGrey : BColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
              color: dark ? BColors.darkGrey : BColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            ))
      ],
    );
  }
}