import 'package:beautybonenza/common/widgets/widgets.login_sigin/form_divider.dart';
import 'package:beautybonenza/common/widgets/widgets.login_sigin/social_buttons.dart';
import 'package:beautybonenza/features/authentications/screens/signup/widgets/signup_form.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultsSpace),
          child: Column(
            children: [
              /// title
              Text(
                BText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Form
              const BSignup_Form(),
              const SizedBox(height: BSizes.spaceBtwSections,),
              /// Divider
              BFormDivider(dividerText: BText.orSignInWith.capitalize!,),
              const SizedBox(height: BSizes.spaceBtwSections,),
              /// social Button
              const BSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}


