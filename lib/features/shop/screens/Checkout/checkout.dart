import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/features/shop/screens/Checkout/widgets/billing_address_section.dart';
import 'package:beautybonenza/features/shop/screens/Checkout/widgets/billing_payment_section.dart';
import 'package:beautybonenza/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Scaffold(
      appBar: BAppbar(
        showBackArrow: true,
        title: Text(
          'Order Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// Items in cart
              BCartItems(
                showAddRemoveButtons: false,
              ),
              SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Coupon TextField
              BCouponCode(),

              SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              BRoundedContainer(padding: EdgeInsets.all(BSizes.md ),
                showBorder: true,
                backgroundColor: dark ? BColors.black : BColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    BBillingPaymentSection(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    ),

                    ///Divider
                    Divider(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    ),

                    ///Payment Methods
                    BBillingAddressSection(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    )
                    ///Addresses
                    ///
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
