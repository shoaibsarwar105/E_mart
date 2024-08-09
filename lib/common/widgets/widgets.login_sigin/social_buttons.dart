import 'package:flutter/material.dart';

import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';

class BSocialButtons extends StatelessWidget {
  const BSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(BImages.instagram),
        ),
        SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(BImages.tweeter),
        ),
        SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(BImages.facebook),
        ),
        SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(BImages.google),
        ),
      ],
    );
  }
}