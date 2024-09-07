import 'package:abo_hamza_ecomerce/core/services/sevices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServises = Get.find();
  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServises.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    String? sharedPrefLang = myServises.sharedPreferences.getString('lang');
    if (sharedPrefLang == 'ar') {
      language = Locale('ar');
    } else if (sharedPrefLang == 'en') {
      language = Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
