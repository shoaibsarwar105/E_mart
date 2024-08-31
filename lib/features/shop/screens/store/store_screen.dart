import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/custom_shapes/Containers/search_Container.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/layouts/grid_layout.dart';
import 'package:beautybonenza/common/widgets/products.cart/Cart_menu_icon.dart';
import 'package:beautybonenza/common/widgets/text/b_brand_title_text_with_verified_icon.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/enums.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/Images/b_circular_image.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../utils/constant/colors.dart';

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
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: BSizes.spaceBtwItems / 1.5,
                      ),
                      BGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: BRoundedContainer(
                                padding: const EdgeInsets.all(BSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    /// icon
                                    Flexible(
                                      child: BCircularImage(
                                          isNetworkImage: false,
                                          image: BImages.dress,
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              BHelperFunction.isDark(context)
                                                  ? BColors.white
                                                  : BColors.black),
                                    ),
                                    const SizedBox(
                                      height: BSizes.spaceBtwItems / 2,
                                    ),

                                    /// Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BBrandTitleWithVerifiedIcon(
                                            title: 'Brand',
                                            brandTextSizes: TextSizes.large,
                                          ),
                                          Text(
                                            '256 Products hghg hggg gghgg ghjh',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(BSizes.defaultsSpace),
                child: Column(
                  children: [
                    /// Brand
                    BRoundedContainer(
                      showBorder: true,
                      borderColor: BColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: EdgeInsets.only(bottom: BSizes.spaceBtwItems),
                    )

                    /// Products
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
