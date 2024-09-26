import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BAppbar(
        title: Text(
          'Popular Products',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultsSpace),
          child: BSortableProducts(),
        ),
      ),
    );
  }
}


