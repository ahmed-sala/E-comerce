import 'package:abo_hamza_ecomerce/core/constant/routes.dart';
import 'package:abo_hamza_ecomerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onboarding: (context) => const Onboarding(),
};
