import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';

class BTerms_Conditions extends StatelessWidget {
  const BTerms_Conditions({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${BText.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${BText.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                  color:
                  dark ? BColors.white : BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? BColors.white
                      : BColors.primary)),
          TextSpan(
              text: '${BText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: BText.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                  color:
                  dark ? BColors.white : BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? BColors.white
                      : BColors.primary)),
        ]))
      ],
    );
  }
}