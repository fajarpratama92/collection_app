import 'package:collection_app/pages/splash/splash.dart';
import 'package:collection_app/utils/home_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Collection App',
      theme: ThemeData(
        fontFamily: 'Helvetica',
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
      ),
      initialBinding: HomeBindings(),
      home: SplashPage(),
    );
  }
}
