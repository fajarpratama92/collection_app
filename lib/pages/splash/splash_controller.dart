import 'package:get/get.dart';

import '../../utils/my_pref.dart';

class SplashController extends GetxController {
  List<String> splashAssets = [
    "assets/images/rayrend_logo.svg",
  ];

  RxInt index = 0.obs;

  void initAnimation() async {
    showSplash();
    Future.delayed(const Duration(seconds: 1), () {
      var onBoarding = Get.find<MyPref>().isOnBoarding;
      var accessToken = Get.find<MyPref>().accessToken.val;
      if (accessToken.isNotEmpty) {
        // return Get.offAll(() => MainPage());
      }
      if (!onBoarding.val) {
        // Get.offAll(() => OnBoardingPage());
        onBoarding.val = true;
      } else {
        // Get.offAll(() => LoginPage());
      }
    });
  }

  void showSplash() async {
    for (int i = 0; i < splashAssets.length; i++) {
      index.value = i;
      await Future.delayed(const Duration(milliseconds: 300), () {});
      update();
    }
  }

  @override
  void onInit() {
    initAnimation();
    super.onInit();
  }
}
