
import 'package:beautybonenza/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/device/device-utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    final dark=BHelperFunction.isDark(context);

    return Positioned(
        bottom: BDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: BSizes.defaultsSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect:  ExpandingDotsEffect(
              activeDotColor: dark ? BColors.light:BColors.dark, dotHeight: 6),
        ));
  }
}