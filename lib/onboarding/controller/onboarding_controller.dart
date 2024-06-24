// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class OnBoardingController extends GetxController {
//   static OnBoardingController get instance => Get.find();
//
//   /// Variables
//   final pageController = PageController();
//   Rx<int> currentPageIndex = 0.obs;
//
//   /// Update Current Index when Page Scroll
//   void updatePageIndicator(index) {
//     currentPageIndex.value = index;
//   }
//
//   /// Jump to the specific page
//   void dotNavigationClicked(index) {
//     pageController.animateToPage(
//       index,
//       duration: const Duration(milliseconds: 400),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   /// Update Current Index & jump to next page
//   void nextPage() {
//     if (currentPageIndex.value < 2) {
//       currentPageIndex.value++;
//       pageController.nextPage(
//         duration: const Duration(milliseconds: 400),
//         curve: Curves.easeInOut,
//       );
//     } else if (currentPageIndex.value == 2) {
//       Get.offAll(const LoginScreen());
//     }
//   }
//
//   /// Update Current Index & jump to last page
//   void skipOnBoarding() {
//     // Get.to(LoginScreen();
//   }
// }
