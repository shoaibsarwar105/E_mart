import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/custom_shapes/Containers/search_Container.dart';
import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/products.cart/Cart_menu_icon.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    BRoundedContainer(
                      padding: const EdgeInsets.all(BSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// icon
                          Container(
                            width: 56,
                            height: 56,
                            padding: const EdgeInsets.all(BSizes.sm),
                            decoration: BoxDecoration(
                                color: BHelperFunction.isDark(context)
                                    ? BColors.black
                                    : BColors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: Image(
                              image: const AssetImage(BImages.dress),
                              color: BHelperFunction.isDark(context)
                                  ? BColors.black
                                  : BColors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
