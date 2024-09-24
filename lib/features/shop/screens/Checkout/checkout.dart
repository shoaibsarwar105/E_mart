import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/success_screen/success_screen.dart';
import 'package:beautybonenza/features/shop/screens/Checkout/widgets/billing_address_section.dart';
import 'package:beautybonenza/features/shop/screens/Checkout/widgets/billing_amount_section.dart';
import 'package:beautybonenza/features/shop/screens/Checkout/widgets/billing_payment_section.dart';
import 'package:beautybonenza/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:beautybonenza/navigation_menu.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// Items in cart
              const BCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Coupon TextField
              const BCouponCode(),

              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              BRoundedContainer(
                padding: const EdgeInsets.all(BSizes.md),
                showBorder: true,
                backgroundColor: dark ? BColors.black : BColors.white,
                child: const Column(
                  children: [
                    ///Pricing
                    BBillingAmountSection(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    ),

                    ///Divider
                    Divider(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    ),

                    ///Payment Methods
                    BBillingPaymentSection(),
                    SizedBox(
                      height: BSizes.spaceBtwItems,
                    ),

                    ///Addresses
                    BBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultsSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(SuccessScreen(
                image: BImages.successfulPaymentIcon,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon!',
                onPressed: () {
                  Get.offAll(const NavigationMenu());
                }));
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
