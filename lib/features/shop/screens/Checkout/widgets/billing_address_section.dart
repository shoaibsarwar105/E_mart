import 'package:beautybonenza/common/widgets/text/section_heading.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BBillingAddressSection extends StatelessWidget {
  const BBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Dream Life',
          style: Theme.of(context).textTheme.bodyLarge,
        ), const SizedBox(
          height: BSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            Text(
              "+923084739991",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: BSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: BSizes.spaceBtwItems,
            ),
            Expanded(
                child: Text(
              "Muslim Town  ,Punjab 5555,Pakistan",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )),
          ],
        ),
      ],
    );
  }
}
