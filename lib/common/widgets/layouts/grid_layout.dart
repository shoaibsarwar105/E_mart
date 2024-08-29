import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';


class BGridLayout extends StatelessWidget {
  const BGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent = 288, required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuilder;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.zero,
        itemCount: itemCount,physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: BSizes.gridViewSpacing,
            crossAxisSpacing: BSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}