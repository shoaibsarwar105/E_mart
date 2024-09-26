import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../products_cards/product_card_vertical.dart';

class BSortableProducts extends StatelessWidget {
  const BSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          items: [
            'Names',
            'Higher Price',
            'Lower Price',
            'Sales',
            'Newest',
            'Popularity'
          ]
              .map((options) =>
              DropdownMenuItem(value: options, child: Text(options)))
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),

        const SizedBox(
          height: BSizes.spaceBtwSections,
        ),

        /// Products
        BGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const BProductCardVertical())
      ],
    );
  }
}