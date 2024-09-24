import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BBillingAmountSection extends StatelessWidget {
  const BBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Subtotal
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$245.0',
              style: Theme.of(context).textTheme.bodyMedium,
            ),


          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

        /// Shipping fee
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),


          ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems/2,),

        /// Tax fee
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),


          ],
        ), const SizedBox(height: BSizes.spaceBtwItems/2,),

        /// Order Total
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.titleMedium,
            ),


          ],
        ),













      ],
    );
  }
}
