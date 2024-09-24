import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/colors.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BBillingPaymentSection extends StatelessWidget {
  const BBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Column(
      children: [
        BSectionHeading(
          title: 'Payment Methods',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            BRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? BColors.light : BColors.white,
              padding: const EdgeInsets.all(BSizes.sm),
              child: const Image(
                image: AssetImage(BImages.masterCard),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: BSizes.spaceBtwItems/2,),
            Text('Master Card',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
