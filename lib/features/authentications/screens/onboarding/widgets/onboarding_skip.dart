import 'package:beautybonenza/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/device/device-utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: BDeviceUtils.getAppBarHeight(),
        right: BSizes.defaultsSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();


          },
          child: Text("Skip"),
        )

      ///Dot Navigation SmoothPageIndicator
      ///Circular buttons
    );
  }
}