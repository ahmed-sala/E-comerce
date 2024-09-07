import 'package:abo_hamza_ecomerce/core/localization/change_locale.dart';
import 'package:abo_hamza_ecomerce/core/localization/translation.dart';
import 'package:abo_hamza_ecomerce/routes.dart';
import 'package:abo_hamza_ecomerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';
import 'core/services/sevices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 1.5,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
    );
  }
}
