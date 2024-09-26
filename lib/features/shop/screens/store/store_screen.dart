import 'package:beautybonenza/common/custom_shapes/Containers/search_Container.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/layouts/grid_layout.dart';
import 'package:beautybonenza/common/widgets/products.cart/Cart_menu_icon.dart';

import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/features/shop/screens/brand/all_brands.dart';
import 'package:beautybonenza/features/shop/screens/brand/brand_products.dart';
import 'package:beautybonenza/features/shop/screens/store/widgets/category_tab.dart';

import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../utils/constant/colors.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: BAppbar(
          title: Text(
            "store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            BCartCounterIcon(
              onPressed: () {},
              iconColor:
                  BHelperFunction.isDark(context) ? Colors.white : Colors.black,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: BHelperFunction.isDark(context)
                    ? BColors.black
                    : BColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(BSizes.defaultsSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// --Search bar

                      const SizedBox(
                        height: BSizes.spaceBtwItems,
                      ),
                      const BSearchContainer(
                        showBackground: false,
                        text: 'Search in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: BSizes.spaceBtwItems,
                      ),

                      /// -- Featured Brands
                      BSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {Get.to(const AllBrandsScreen());},
                      ),
                      const SizedBox(
                        height: BSizes.spaceBtwItems / 1.5,
                      ),
                      BGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return  BBrandCard(
                              showBorder: true,onTap: (){Get.to(const BrandProducts());},
                            );
                          })
                    ],
                  ),
                ),

                /// --Tabs
                bottom: const BTabBar(
                  tabs: [
                    Tab(
                      child: Text("Sports"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronics"),
                    ),
                    Tab(
                      child: Text("Clothes"),
                    ),
                    Tab(
                      child: Text("Cosmetics"),
                    ),
                    Tab(
                      child: Text("Mobiles"),
                    ),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              BCategoryTab(),
              BCategoryTab(),
              BCategoryTab(),
              BCategoryTab(),
              BCategoryTab(),
              BCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}


