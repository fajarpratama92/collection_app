import 'dart:developer';
import 'package:get/get.dart';

import '../../utils/home_bindings.dart';
import '../../utils/my_pref.dart';

class LoginController extends GetxController {
  RxBool isCheck = false.obs;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxString errorMessage = ''.obs;

  var emailPref = Get.find<MyPref>().email;
  var accessToken = Get.find<MyPref>().accessToken;

  void login({required String email, required String password}) async {
    try {
      if (email == "" && password == "") {
        // Get.offAll(() => MainPage(), binding: HomeBindings());
        update();
        // accessToken.val = response.data['token'];
      } else {
        errorMessage.value = "username or password not found";
        isError.value = true;
        update();
      }
      if (isCheck.isTrue) {
        emailPref.val = email;
      }
      update();
    } on Exception catch (e) {
      isLoading.value = false;
      update();
      log('error login $e');
    }
  }

  void changeIsCheck() {
    isCheck.value = !isCheck.value;
    update();
  }
}
