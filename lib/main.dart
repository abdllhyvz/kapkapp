import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kapkap/Screens/navbar.dart';

import 'Screens/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  var loggedin = await GetStorage().read('isLoggedIn');
  runApp(
      GetMaterialApp(home: loggedin == "true" ? NavbarRouter() : LoginPage()));
}
