import 'package:beautybonenza/features/authentications/screens/password_configuration/forget_password.dart';
import 'package:beautybonenza/features/authentications/screens/signup/signup.dart';
import 'package:beautybonenza/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/constant/text.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: BSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: BText.email),
              ),
              const SizedBox(
                height: BSizes.spaceBtwInputFields,
              ),

              /// password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: BText.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(
                height: BSizes.spaceBtwInputFields / 2,
              ),

              /// Remember Me & Forget Password
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Remember Me
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(BText.rememberMe)
                    ],
                  ),

                  /// Forget Password
                  TextButton(
                      onPressed: (){Get.to(const ForgetPassword());}, child: const Text(BText.forgetPassword))
                ],
              ),
              const SizedBox(
                height: BSizes.spaceBtwInputFields,
              ),

              /// Sign in button

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {Get.to(const NavigationMenu());}, child: const Text(BText.signIn))),
              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),

              /// Create Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {Get.to(const SignupScreen());},

                      child: const Text(BText.createAccount))),
            ],
          ),
        ));
  }
}