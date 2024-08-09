import 'package:beautybonenza/common/widgets/success_screen/success_screen.dart';
import 'package:beautybonenza/features/authentications/screens/login/login.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/constant/text.dart';
import 'package:beautybonenza/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Get.offAll(const LoginScreen());
                },
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          // padding to give default equal space on all sides in all screens
          child: Padding(
            padding: const EdgeInsets.all(BSizes.defaultsSpace),
            child: Column(
              children: [
                ///Image
                Image(
                  image: const AssetImage(
                    BImages.emailImage2,
                  ),
                  width: BHelperFunction.screenWidth() * 0.6,
                ),
                const SizedBox(
                  height: BSizes.spaceBtwSections,
                ),

                ///Title&Subtitle
                Text(
                  BText.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                Text(
                  'example@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                Text(
                  BText.confirmEmailSubTitle,
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
                    onPressed: () {
                      Get.to(SuccessScreen(
                        image: BImages.emailImage3,
                        title: BText.yourAccountCreatedTitle,
                        subTitle: BText.yourAccountCreatedSubTitle,
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                      ));
                    },
                    child: const Text(BText.bContinue),
                  ),
                ),
                const SizedBox(
                  height: BSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(BText.resendEmail),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
