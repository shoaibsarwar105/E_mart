import 'package:beautybonenza/common/styles/spacing_styles.dart';

import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/text.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: BSpacingStyle.paddingWithAppBarHeight*2,
        child:Column(children: [
          ///Image
          Image(
            image:  AssetImage(
              image
            ),
            width: BHelperFunction.screenWidth() * 0.6,
          ),
          const SizedBox(
            height: BSizes.spaceBtwSections,
          ),

          ///Title&Subtitle
          Text(
           title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          Text(
            subTitle,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: BSizes.spaceBtwSections,
          ),
          ///Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text(BText.bContinue),
            ),
          ),







        ],) ,




        )
      ),

    );
  }
}
