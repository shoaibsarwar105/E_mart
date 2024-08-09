
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: AssetImage(
                dark ? BImages.lightAppLogo : BImages.darkAppLogo)),
        Text(
          BText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: BSizes.sm,
        ),
        Text(
          BText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}