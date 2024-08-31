
import 'package:flutter/material.dart';

import '../../../features/shop/screens/store/brand_card.dart';
import '../../../utils/constant/colors.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/Containers/BRoundedContainer.dart';

class BBrandShowcase extends StatelessWidget {
  const BBrandShowcase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BRoundedContainer(
        showBorder: true,
        borderColor: BColors.darkGrey,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(BSizes.md),
        margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
        child: Column(
          children: [
          /// Brand with Product count
          const BBrandCard(
          showBorder: false,
        ),

        /// Brand Top 3 Product images
        Row(
            children:
            images.map((image)=>brandTopProductImageWidget(image, context)).toList())


     ],
    ),
    );
  }



  Widget brandTopProductImageWidget(String images,context){
    return Expanded(child: BRoundedContainer(height: 100,
      backgroundColor: BHelperFunction.isDark(context)
          ? BColors.light
          : BColors.darkGrey,
      margin: const EdgeInsets.only(right: BSizes.sm),
      padding: const EdgeInsets.all(BSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(images),
      ),));
  }

}