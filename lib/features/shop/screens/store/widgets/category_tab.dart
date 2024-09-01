import 'package:beautybonenza/common/widgets/layouts/grid_layout.dart';
import 'package:beautybonenza/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constant/images.dart';
import '../../../../../utils/constant/sizes.dart';

class BCategoryTab extends StatelessWidget {
  const BCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(BSizes.defaultsSpace),
                  child: Column(
                    children: [
                      /// Brand
                      const BBrandShowcase(
                        images: [
                          BImages.product26,
                          BImages.product28,
                          BImages.product25
                        ],
                      ),
                      const BBrandShowcase(
                        images: [
                          BImages.product26,
                          BImages.product28,
                          BImages.product25
                        ],
                      ),
          
                      /// Products
                      BSectionHeading(
                        title: "You might like it.",
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: BSizes.spaceBtwItems,
                      ),
          
                      BGridLayout(
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return const BProductCardVertical();
                          }),
                      const SizedBox(
                        height: BSizes.spaceBtwSections,
                      )
                    ],
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
