import 'package:beautybonenza/features/authentications/screens/login/widgets/login_form.dart';
import 'package:beautybonenza/features/authentications/screens/login/widgets/login_header.dart';
import 'package:beautybonenza/utils/constant/sizes.dart';
import 'package:beautybonenza/utils/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/widgets.login_sigin/form_divider.dart';
import '../../../../common/widgets/widgets.login_sigin/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo,Title & sub-Title
              const BLoginHeader(),

              /// Form
              const BLoginForm(),

              /// Divider
              BFormDivider(
                dividerText: BText.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),

              /// Footer
              const BSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
