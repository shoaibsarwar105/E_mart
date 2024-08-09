import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/device/device-utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return GestureDetector( onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultsSpace),
        child: Container(
          width: BDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(BSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? BColors.dark
                      : BColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(BSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: Colors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: BColors.darkerGrey,
              ),
              const SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
