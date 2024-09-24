import 'package:beautybonenza/common/custom_shapes/Containers/BRoundedContainer.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/colors.dart';

class BSingleAddress extends StatelessWidget {
  const BSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return BRoundedContainer(
      padding: const EdgeInsets.all(BSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? BColors.primary : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? BColors.darkerGrey
              : BColors.grey,
      margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? BColors.light
                        : BColors.dark.withOpacity(0.2)
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Deo',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: BSizes.sm/2,) ,
              const Text(
                '+923084739991',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,

              ),
              const SizedBox(height: BSizes.sm/2,), const Text(
                'Behind Grid Station Muslim Town Street no. 1,House No. 3',

                softWrap: true,
              ),
              const SizedBox(height: BSizes.sm/2,)
            ],
          )
        ],
      ),
    );
  }
}
