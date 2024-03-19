import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/main.dart';



class MyLocalController extends GetxController {
  Locale initLang = sharedpref.getString("lang") ==null ? Get.deviceLocale! : Locale(sharedpref.getString("lang")!);
  changeLang (String lang){
    Locale locale = Locale(lang);
    sharedpref.setString("lang", locale.toString());
    Get.updateLocale(locale);
  }
}