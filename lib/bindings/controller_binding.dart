import 'package:flutter_tailor_app/controller/cartcontroller.dart';
import 'package:flutter_tailor_app/controller/onboardingcontroller.dart';
import 'package:flutter_tailor_app/controller/searchcontroller.dart';
import 'package:flutter_tailor_app/controller/tailorcontroller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(TailorController());
    Get.put(CartController());
    // Get.put(SearchController());
    Get.put(OnboardingController());
    // Get.put(RatingController());
    Get.put(TailorController());
  }
}
