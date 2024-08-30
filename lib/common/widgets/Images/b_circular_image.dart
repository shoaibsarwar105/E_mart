import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BCircularImage extends StatelessWidget {
  const BCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width= 56,
    this.height=56,
    this.padding=BSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if background image color is null then switch it to light and dark mode color design
          color:backgroundColor ??(
              BHelperFunction.isDark(context) ? BColors.black : BColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image:isNetworkImage? NetworkImage(image): AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
