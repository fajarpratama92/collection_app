import 'package:get/get.dart';

import 'my_pref.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyPref());
  }
}