import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products.cart/Cart_menu_icon.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/text.dart';

class BHomeAppbar extends StatelessWidget {
  const BHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppbar(
      title: Column(
        children: [
          Text(
            BText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BColors.grey),
          ),
          Text(
            BText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: BColors.white),
          )
        ],
      ),
      actions:  [
        BCartCounterIcon(onPressed: (){}, iconColor:  BColors.white,)
      ],
    );
  }
}