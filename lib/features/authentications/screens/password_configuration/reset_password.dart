import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constant/text.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
         actions: [IconButton(onPressed: (){Get.back();}, icon:const  Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(BSizes.defaultsSpace),
        child: Column(children: [
          ///Image
          Image(
            image:  const AssetImage(
                BImages.emailImage4
            ),
            width: BHelperFunction.screenWidth() * 0.6,
          ),
          const SizedBox(
            height: BSizes.spaceBtwSections,
          ),

          ///Title&Subtitle
          Text(
            BText.changeYourPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          Text(
            BText.changeYourPasswordSubTitle,
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
              onPressed: (){},
              child: const Text(BText.done),
            ),
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: (){},
              child: const Text(BText.resendEmail),
            ),
          ),
        ],),),
      ),
    );
  }
}
