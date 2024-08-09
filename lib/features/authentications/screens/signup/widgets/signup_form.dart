import 'package:beautybonenza/features/authentications/screens/signup/verify_email.dart';
import 'package:beautybonenza/features/authentications/screens/signup/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BSignup_Form extends StatelessWidget {
  const BSignup_Form({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunction.isDark(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: BText.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(
                  width: BSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: BText.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: BText.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: BText.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Phone Number
            TextFormField(
              decoration: const InputDecoration(
                  labelText: BText.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: BText.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: BSizes.spaceBtwSections,
            ),

            /// Terms & Conditions checkbox
           const  BTerms_Conditions(),
            const SizedBox(
              height: BSizes.spaceBtwSections,
            ),

            /// Sign up Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {Get.to(VerifyEmailScreen());},
                child: const Text(BText.createAccount),
              ),
            )
          ],
        ));
  }
}

