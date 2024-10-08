import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/Images/b_rounded_image.dart';
import 'package:beautybonenza/common/widgets/pricetitle/price_title.dart';
import 'package:beautybonenza/features/shop/screens/product_details/product_detail.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/b-circular_icon.dart';
import '../../text/b_brand_title_text_with_verified_icon.dart';
import '../../text/product_title_text.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);

    /// container with side padding ,color , edges, radius and shadow.
    return GestureDetector(
      onTap: () {Get.to(const ProductDetailScreen());},
      child: Container(

        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(BSizes.productImageRadius),
          color: dark ? BColors.darkerGrey : BColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag

            BRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: dark ? BColors.dark : BColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const BRoundedImage(
                    imageUrl: BImages.product1,
                    applyImageRadius: true,
                  ),

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
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),

            ///  -- Details
            const Padding(
              padding: EdgeInsets.only(left: BSizes.sm),
              child: SizedBox(width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BProductTitleText(
                      title: 'Baby CARE Instruments  ',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: BSizes.spaceBtwItems / 2,
                    ),
                    BBrandTitleWithVerifiedIcon(title: 'Brand Name', ),

                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: BProductPriceText(price: '35.5'),
                ),

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
    );
  }
}


