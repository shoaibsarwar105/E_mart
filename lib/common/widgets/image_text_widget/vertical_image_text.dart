import 'package:flutter/material.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    super.key, required this.image, required this.title,  this.textColor=BColors.white, this.backGroundColor = BColors.white, this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(BSizes.sm),
              decoration: BoxDecoration(
                  color: backGroundColor ?? (dark ? BColors.black : BColors.white),
                  borderRadius:
                  BorderRadius.circular(100)),
              child:  Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? BColors.dark : BColors.light,
                  )),
            ),const SizedBox(height: BSizes.spaceBtwItems/2,),
            SizedBox(width:55,child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor ),maxLines: 1,overflow: TextOverflow.ellipsis,))
          ],
        ),
      ),
    );
  }
}