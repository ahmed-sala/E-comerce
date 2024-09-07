import 'package:get/get_navigation/get_navigation.dart';

class MyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {'1': 'Choose your language', '2': 'English', '3': 'Arabic'},
        'ar': {'1': 'اختر لغتك', '2': 'الانجليزية', '3': 'العربية'},
      };
}
