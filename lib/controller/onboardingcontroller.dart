import 'package:flutter/cupertino.dart';
import 'package:flutter_tailor_app/utility/onboarding_info.dart';
import 'package:flutter_tailor_app/views/login.dart';

import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    if (isLastPage) {
      Get.to(LoginScreen());
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo("images/c.jpg", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
    OnboardingInfo("images/b.jpg", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
    OnboardingInfo("images/a.jpg", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
  ];
}
