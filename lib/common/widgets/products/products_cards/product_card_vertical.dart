import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';

import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constant/sizes.dart';
import '../../../styles/shadows.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);

    /// container with side padding ,color , edges, radius and shadow.
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [BShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(BSizes.productImageRadius),
        color: dark
            ? BColors.darkerGrey
            : BColors.white,
      ),
      child: const Column(children: [
        /// Thumbnail, Wishlist Button, Discount Tag

      BRoundedContainer()
        ///  -- Details





      ],),
    );
  }
}
