import 'package:beautybonenza/common/widgets/appbar/appbar.dart';

import 'package:beautybonenza/features/shop/screens/Checkout/checkout.dart';
import 'package:beautybonenza/features/shop/screens/cart/widgets/cart_items.dart';

import 'package:beautybonenza/utils/constant/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child:

              /// -- Items in cart
              BCartItems()),

      /// checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultsSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(const CheckoutScreen());
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
