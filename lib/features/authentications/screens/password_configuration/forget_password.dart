import 'package:beautybonenza/features/authentications/screens/password_configuration/reset_password.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(BSizes.defaultsSpace),
        child: Column(
          children: [
            /// headings
            Text(
              BText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems,
            ),
            Text(
              BText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems * 2,
            ),

            ///  Text Field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: BText.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: BSizes.spaceBtwSections,
            ),
            /// submit
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){Get.off(const ResetPassword());}, child: const Text(BText.submit)))

          ],
        ),
      ),
    );
  }
}
