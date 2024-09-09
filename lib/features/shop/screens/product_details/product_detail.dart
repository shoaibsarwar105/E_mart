import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image Slider
            BProductImageSlider(),

            /// 2- Product Details
            Padding(
              padding: EdgeInsets.only(
                right: BSizes.defaultsSpace,
                left: BSizes.defaultsSpace,
                bottom: BSizes.defaultsSpace,
              ),
              child: Column(
                children: [
                  /// --Rating & share
                  BRatingAndShare(),
                  /// --Price ,title,stock ,& Brand
                  BProductMetaData()
                  /// --Attributes
                  /// --checkout Button
                  /// --Description
                  /// --Reviews


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


