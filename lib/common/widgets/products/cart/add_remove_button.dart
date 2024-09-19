
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/b-circular_icon.dart';

class BProductQuantityWithAddRemoveButton extends StatelessWidget {
  const BProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        BCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: BSizes.md,
          color: BHelperFunction.isDark(context)
              ? BColors.white
              : BColors.black,
          backgroundColor: BHelperFunction.isDark(context)
              ? BColors.darkerGrey
              : BColors.light,
        ),
        const SizedBox(width:  BSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width:  BSizes.spaceBtwItems,),
        const BCircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: BSizes.md,
            color:  BColors.white
            ,
            backgroundColor:
            BColors.primary

        ),





      ],
    );
  }
}