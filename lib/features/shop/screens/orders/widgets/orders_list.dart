import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BOrderListItems extends StatelessWidget {
  const BOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return ListView.separated(


    shrinkWrap: true,
      itemCount: 10,

      separatorBuilder: (_,__)=>const SizedBox(height: BSizes.spaceBtwItems,),
      itemBuilder:(_,index) => BRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(BSizes.md),
        backgroundColor: dark ? BColors.dark : BColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row
            Row(
              children: [
                /// 1- icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: BSizes.spaceBtwItems / 2,
                ),

                /// 2- Status & Data
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: BColors.primary, fontSizeDelta: 1),
                      ),
                      Text(
                        '07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
                /// 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: BSizes.iconSm,))
              ],
            ),
            const SizedBox(height: BSizes.spaceBtwItems,),

            /// --Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1- icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: BSizes.spaceBtwItems / 2,
                      ),

                      /// 2- Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Orders',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium

                            ),
                            Text(
                              '[#256f4]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1- icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: BSizes.spaceBtwItems / 2,
                      ),

                      /// 2- Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Shipping Date',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium

                            ),
                            Text(
                              '03 Nov 2024  ',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
