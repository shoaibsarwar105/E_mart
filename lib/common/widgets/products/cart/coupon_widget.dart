import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../custom_shapes/Containers/BRoundedContainer.dart';

class BCouponCode extends StatelessWidget {
  const BCouponCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return BRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? BColors.dark : BColors.white,
      padding: EdgeInsets.only(
          top: BSizes.sm,
          bottom: BSizes.sm,
          right: BSizes.sm,
          left: BSizes.md),
      child: Row(
        children: [
          /// --TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here.',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? BColors.white.withOpacity(0.5)
                        : BColors.black.withOpacity(0.5),
                    backgroundColor: BColors.grey.withOpacity(0.2),
                    side: BorderSide(color: BColors.grey.withOpacity(0.1))




                ),
                child: Text('Apply'),
              ))
        ],
      ),
    );
  }
}