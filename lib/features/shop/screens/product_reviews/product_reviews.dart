import 'package:beautybonenza/common/widgets/appbar/appbar.dart';
import 'package:beautybonenza/features/shop/screens/product_reviews/widgets/rating_pogress_indicator.dart';
import 'package:beautybonenza/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const BAppbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      /// body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from peopole who use the same type of device that you use '),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),

              /// Overall Product Rating
              const BOverallProductRating(),
              const BRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// User reviews List
              const UserReviewCard(),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),
              const UserReviewCard(),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
