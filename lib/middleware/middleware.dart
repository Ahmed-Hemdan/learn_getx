
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/main.dart';


class Middleware extends GetMiddleware{
@override 
RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    if (sharedPreferences!.getString('id') != null) return const RouteSettings(name: "/PageTwo");

  }
}