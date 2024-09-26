import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/brands/brand_card.dart';
import 'package:beautybonenza/common/widgets/layouts/grid_layout.dart';

import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/features/shop/screens/brand/brand_products.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// Heading
              const BSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),

              /// Brands
              BGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) {
                    return BBrandCard(showBorder: true,onTap: (){Get.to(const BrandProducts());},);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
