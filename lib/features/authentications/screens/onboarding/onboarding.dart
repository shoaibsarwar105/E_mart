import 'package:beautybonenza/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:beautybonenza/features/authentications/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:beautybonenza/features/authentications/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:beautybonenza/features/authentications/screens/onboarding/widgets/onboarding_page.dart';
import 'package:beautybonenza/features/authentications/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:beautybonenza/utils/constant/images.dart';
import 'package:beautybonenza/utils/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children: const [
              OnBoardingPage(
                image: BImages.onboardingImages1,
                title: BText.onBoardingTitle1,
                subTitle: BText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: BImages.onboardingImages2,
                title: BText.onBoardingTitle2,
                subTitle: BText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: BImages.onboardingImages3,
                title: BText.onBoardingTitle3,
                subTitle: BText.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
