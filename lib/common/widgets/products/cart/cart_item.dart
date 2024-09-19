import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/images.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../Images/b_rounded_image.dart';
import '../../text/b_brand_title_text.dart';
import '../../text/b_brand_title_text_with_verified_icon.dart';

class BCartItem extends StatelessWidget {
  const BCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BRoundedImage(
          imageUrl: BImages.product11,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(BSizes.sm),
          backgroundColor: BHelperFunction.isDark(context)
              ? BColors.darkerGrey
              : BColors.light,
        ),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),

        /// Title , price  & sizes
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BBrandTitleWithVerifiedIcon(title: 'Niki'),
              const Flexible(
                child: BBrandTitleText(
                  title: 'Black Sports shoes.',
                  maxLines: 1,
                ),
              ),

              ///Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color :',
                    style: Theme.of(context).textTheme.bodySmall),

                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size :',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08',
                    style: Theme.of(context).textTheme.bodyLarge)
              ]))
            ],
          ),
        )
      ],
    );
  }
}