import 'package:beautybonenza/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppbar(
        showBackArrow: true,
        title: Text(
          'Order Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
