import 'package:beautybonenza/utils/constant/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import 'b_brand_title_text.dart';

class BBrandTitleWithVerifiedIcon extends StatelessWidget {
  const BBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor = BColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes= TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return  Row(
     mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: BSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: BSizes.iconXs,
        )
      ],
    );
  }
}
