import 'package:flutter/material.dart';

import '../../custom_shapes/Containers/BRoundedContainer.dart';
import '../Images/b_circular_image.dart';
import '../text/b_brand_title_text_with_verified_icon.dart';
import '../../../utils/constant/colors.dart';
import '../../../utils/constant/enums.dart';
import '../../../utils/constant/images.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BBrandCard extends StatelessWidget {
  const BBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BRoundedContainer(
        padding: const EdgeInsets.all(BSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// icon
            Flexible(
              child: BCircularImage(
                  isNetworkImage: false,
                  image: BImages.dress,
                  backgroundColor: Colors.transparent,
                  overlayColor:
                  BHelperFunction.isDark(context)
                      ? BColors.white
                      : BColors.black),
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const BBrandTitleWithVerifiedIcon(
                    title: 'Brand',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 Products hghg hggg gghgg ghjh',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}