import 'package:beautybonenza/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:beautybonenza/features/shop/screens/home_screen/widgets/home_appbar.dart';
import 'package:beautybonenza/features/shop/screens/home_screen/widgets/home_categories.dart';
import 'package:beautybonenza/features/shop/screens/home_screen/widgets/promo_slider.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';

import 'package:flutter/material.dart';
import '../../../../common/custom_shapes/Containers/primary_header_container.dart';
import '../../../../common/custom_shapes/Containers/search_Container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --Header--
            const BPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// --Appbar--
                  BHomeAppbar(),
                  SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  /// --Searchbar--
                  BSearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  /// --Categories--
                  Padding(
                    padding: EdgeInsets.only(left: BSizes.defaultsSpace),
                    child: Column(
                      children: [
                        /// --Heading--
                        BSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),

                        SizedBox(
                          height: BSizes.spaceBtwItems,
                        ),

                        /// --Categories--
                        BHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(BSizes.defaultsSpace),
              child: Column(
                children: [
                  /// -- promo slider--
                  const BPromoSlider(
                    banners: [
                      BImages.promoBanner1,
                      BImages.promoBanner2,
                      BImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  /// -- popular products--
                  BGridLayout(itemCount: 8, itemBuilder: (_,index ) => const BProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


