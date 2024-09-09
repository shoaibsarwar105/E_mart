import 'package:beautybonenza/common/widgets/Images/b_circular_image.dart';
import 'package:beautybonenza/common/widgets/pricetitle/price_title.dart';
import 'package:beautybonenza/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:beautybonenza/common/widgets/text/product_title_text.dart';
import 'package:beautybonenza/utils/constant/enums.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/custom_shapes/Containers/BRoundedContainer.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';

class BProductMetaData extends StatelessWidget {
  const BProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunction.isDark(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & sale Price
        Row(
          children: [
            /// Sale Tag

            BRoundedContainer(
              radius: BSizes.sm,
              backgroundColor: BColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: BSizes.sm, vertical: BSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: BColors.black),
              ),
            ),
            const SizedBox(
              width: BSizes.spaceBtwItems,
            ),

            /// Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            const BProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        /// Title
        const BProductTitleText(title: 'Green Niki Sports Shirt'),
        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        ///  Stock Status
        Row(
          children: [
            const BProductTitleText(title: 'Status :'),
            const SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems / 1.5,
        ),

        ///  Brand

        const Row(
          children: [
            BCircularImage(
              image: BImages.instagram,
              width: 32,
              height: 32,
              // overlayColor: darkMode ? BColors.white : BColors.black,
            ),
            BBrandTitleWithVerifiedIcon(
              title: 'Niki',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
