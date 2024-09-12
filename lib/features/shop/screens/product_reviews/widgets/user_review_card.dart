import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/products/ratings/rating_indicator.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(
                  BImages.person1,
                )),
                const SizedBox(
                  width: BSizes.spaceBtwItems,
                ),
                Text(
                  'John Deo',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),

        /// Reviews
        Row(
          children: [
            const BRatingBarIndicator(rating: 4),
            const SizedBox(
              height: BSizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive.I was able to navigate and make purchases seamlessly. Great Job!',
          trimLines: 1,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: BColors.primary),
          trimMode: TrimMode.Line,
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),

        /// Company review
        BRoundedContainer(
          backgroundColor: dark ? BColors.darkerGrey : BColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(BSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dream Life',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ), Text(
                      '02 Nov, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(height: BSizes.spaceBtwItems,),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive.I was able to navigate and make purchases seamlessly. Great Job!',
                  trimLines: 1,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: BColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: BColors.primary),
                  trimMode: TrimMode.Line,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
