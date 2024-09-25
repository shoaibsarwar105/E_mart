import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/Images/b_rounded_image.dart';
import 'package:beautybonenza/common/widgets/pricetitle/price_title.dart';
import 'package:beautybonenza/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:beautybonenza/common/widgets/text/product_title_text.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';

import '../../icons/b-circular_icon.dart';

class BProductCardHorizontal extends StatelessWidget {
  const BProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(BSizes.productImageRadius),
        color: dark ? BColors.darkerGrey : BColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail
          BRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(BSizes.sm),
            backgroundColor: dark ? BColors.dark : BColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: BRoundedImage(
                      imageUrl: BImages.product11,
                      applyImageRadius: true,
                    )),

                /// --sale Tag
                Positioned(
                  top: 12,
                  child: BRoundedContainer(
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
                ),

                /// __ favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: BCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: BSizes.sm, left: BSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BProductTitleText(
                        title: 'Green Nike Half Sleeves Shirts',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: BSizes.spaceBtwItems / 2,
                      ),
                      BBrandTitleWithVerifiedIcon(title: "Nike")
                    ],
                  ),

                  const Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      /// Pricing
                      const Flexible(child: BProductPriceText(price: '256.0-340.0')),




                      /// Add to Card
                      Container(
                        decoration: const BoxDecoration(
                            color: BColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(BSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    BSizes.productImageRadius))),
                        child: const SizedBox(
                            width: BSizes.iconLg * 1.2,
                            height: BSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: BColors.white,
                              ),
                            )),
                      )


                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
