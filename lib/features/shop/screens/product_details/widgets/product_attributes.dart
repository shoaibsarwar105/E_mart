import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/pricetitle/price_title.dart';
import 'package:beautybonenza/common/widgets/text/product_title_text.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/chips/choice_chips.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);

    return Column(
      children: [
        /// -- Sellected attributes pricing & discription
        BRoundedContainer(
          padding: const EdgeInsets.all(BSizes.md),
          backgroundColor: dark ? BColors.darkGrey : BColors.grey,
          child: Column(
            children: [
              /// Price , Title & Stock status
              Row(
                children: [
                  const BSectionHeading(
                    title: 'Veriation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: BSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const BProductTitleText(
                            title: 'Price',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: BSizes.spaceBtwItems,
                          ),

                          /// Actual Price
                          Text(
                            '\$250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: BSizes.spaceBtwItems,
                          ),

                          /// Sale tag
                          const BProductPriceText(
                            price: '200',
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const BProductTitleText(
                            title: 'Stock :',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              /// Variation Description
              const BProductTitleText(
                title:
                    'This is the description of the product and it goes upto maximum 4 lines.',
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),

        /// Attributes
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),
            Wrap(spacing: 8, children: [
              BChoiceChip(
                text: 'Green',
                selected: true,
                onSelected: (value) {},
              ),
              BChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
              BChoiceChip(
                text: 'Yellow',
                selected: false,
                onSelected: (value) {},
              ),

            ])
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BSectionHeading(title: 'Sizes',showActionButton: false,),
            const SizedBox(
              height: BSizes.spaceBtwItems / 2,
            ),
            Wrap(
                spacing: 8,
                children: [
              BChoiceChip(
                text: 'Eu 34',
                selected: true,
                onSelected: (value) {},
              ),
              BChoiceChip(
                text: 'Eu 36',
                selected: false,
                onSelected: (value) {},
              ),
              BChoiceChip(
                text: 'Eu 387',
                selected: false,
                onSelected: (value) {},
              ) ,

            ]),
          ],
        )
      ],
    );
  }
}
