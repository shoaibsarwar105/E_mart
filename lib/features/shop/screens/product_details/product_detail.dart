import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_add_to_cart_widget.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:beautybonenza/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:beautybonenza/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image Slider
            const BProductImageSlider(),

            /// 2- Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: BSizes.defaultsSpace,
                left: BSizes.defaultsSpace,
                bottom: BSizes.defaultsSpace,
              ),
              child: Column(
                children: [
                  /// --Rating & share
                  const BRatingAndShare(),

                  /// --Price ,title,stock ,& Brand
                  const BProductMetaData(),

                  /// --Attributes
                  const ProductAttributes(),
                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  /// --checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Check out'))),
                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),

                  /// --Description
                  const BSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),
                  const ReadMoreText(
                    "multiple variations of a product description for a t-shirt Variati 1:Elevate your style with "
                    "\nour premium tshirt -theultimatefusionofcomfortandsophistication.Soft,breathable fabric for all-da"
                    "\ny wearTimeless design that pairs with any outfitDurable construction built to lastAvailable in a rang"
                    "\ne of classic colorsThis is no ordinary tshirt. Crafted with the finest materials andattention to detail,"
                    "\n our tshirtelevates your everyday look with effortless style. Whether youre dressing up or down, this versatilepiece "
                    "\nwill become a wardrobe staple that makes you lookand feel your best.Stop settling for low-quality shirts thatlose their shape and fade over time. "
                    "\nInvest in a tshirt thatcombines uncompromising comfort with timeless, refinedaesthetics. Slip it on "
                    "\nand experience the difference quality makes.Variation 2:The search for the perfect tshirtis over. Introducing"
                    "\n our meticulously designed essential that willtransform your wardrobe.Luxuriously soft, lightweight fabricFlattering, modern cut for a tailored fitAvailable in a variety of classic colorsMachi"
                    "\n washable for easy careThis isnt your average tshirt.Crafted with premium materials"
                    "\n andthoughtful details, its the versatile foundation piece your closet has beenmissing."
                    "\n Pair it with jeans for a casual-cool look, or dressit up with trousers and a blazer for a polished, put - togethevibe.Stop wasting"
                    "\n money on tshirts that sag, shrink, and losetheir shape. Upgrade to a shirt"
                    "\n that will retain its perfect fitand vibrant color, wear afterwear.",
                    trimLines: 2,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'less',
                    trimMode: TrimMode.Line,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// --Reviews
                  const Divider(),
                  const SizedBox(
                    height: BSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BSectionHeading(
                        title: "Reviews(99)",
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () {
                            Get.to(const ProductReviewsScreen());
                          },
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),

                  const SizedBox(
                    height: BSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
