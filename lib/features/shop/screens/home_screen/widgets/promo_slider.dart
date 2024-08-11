import 'package:beautybonenza/features/shop/controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../../common/custom_shapes/Containers/circular_container.dart';
import '../../../../../common/widgets/Images/b_rounded_image.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: const [
            BRoundedImage(
              imageUrl: BImages.promoBanner1,
            ),
            BRoundedImage(
              imageUrl: BImages.promoBanner1,
            ),
            BRoundedImage(
              imageUrl: BImages.promoBanner1,
            )
          ],
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  BCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? BColors.primary
                        : BColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
