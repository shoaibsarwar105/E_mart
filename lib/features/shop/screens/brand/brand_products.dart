import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/common/widgets/brands/brand_card.dart';
import 'package:beautybonenza/common/widgets/products/sortable/sortable_products.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BAppbar(
        title: Text('Nike'),showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// Brand Details
              BBrandCard(showBorder: true),
              SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              BSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
