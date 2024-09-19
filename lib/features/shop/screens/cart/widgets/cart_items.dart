

import 'package:flutter/material.dart';

import '../../../../../common/widgets/pricetitle/price_title.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../utils/constant/sizes.dart';

class BCartItems extends StatelessWidget {
  const BCartItems({super.key, this.showAddRemoveButtons = true});
final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) {
        return const SizedBox(
          height: BSizes.spaceBtwSections,
        );
      },
      itemCount: 6,
      itemBuilder: (_, index) {
        return  Column(
          children: [
            /// Cart item
            BCartItem(),
          if(showAddRemoveButtons)  SizedBox(
              height: BSizes.spaceBtwItems,
            ),

            /// Add Remove Buttons Row with total price

            if(showAddRemoveButtons) Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra space
                    SizedBox(
                      width: 70,
                    ),

                    /// Add Remove Buttons
                    BProductQuantityWithAddRemoveButton(),
                  ],
                ),

                /// -- Product total price
                BProductPriceText(price: '256')
              ],
            )
          ],
        );
      },
    );
  }
}
