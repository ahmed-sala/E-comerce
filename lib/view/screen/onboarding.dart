import 'package:abo_hamza_ecomerce/controller/onboarding_controller.dart';
import 'package:abo_hamza_ecomerce/core/constant/color.dart';
import 'package:abo_hamza_ecomerce/view/widget/onboarding/custom_button.dart';
import 'package:abo_hamza_ecomerce/view/widget/onboarding/dot_controller.dart';
import 'package:abo_hamza_ecomerce/view/widget/onboarding/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(),
                  CustomButtonOnBoarding(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
