import 'package:beautybonenza/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/device/device-utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=BHelperFunction.isDark(context);

    return Positioned(
        right: BSizes.defaultsSpace,
        bottom: BDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape:const CircleBorder(), backgroundColor: dark ? BColors.primary: Colors.black),
          child:const  Icon(Iconsax.arrow_right_3),
        ));
  }
}