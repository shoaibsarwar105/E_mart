import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/custom_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widgets/Images/b_rounded_image.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icons/b-circular_icon.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class BProductImageSlider extends StatelessWidget {
  const BProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark =BHelperFunction.isDark(context);
    return BCurvedEdgeWidget(
      child: Container(
        color: dark ? BColors.darkerGrey : BColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(BSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(BImages.product25))),
              ),
            ),

            /// Image Slider
            Positioned(
              bottom: 30,
              // top: 300,
              left: BSizes.defaultsSpace,
              child: SizedBox(height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: BSizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => BRoundedImage(
                    imageUrl: BImages.product10,
                    height: 80,width: 80,

                    backgroundColor:
                    dark ? BColors.dark : BColors.white,
                    border: Border.all(color: BColors.primary),
                    padding: const EdgeInsets.all(BSizes.sm),
                  ),
                ),
              ),
            ),

            /// Appbar Icons
            const BAppbar(showBackArrow: true,actions: [BCircularIcon(icon: Iconsax.heart5,color: Colors.red,)],)
          ],
        ),
      ),
    );
  }
}