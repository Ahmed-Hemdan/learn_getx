
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SuperMiddleware extends GetMiddleware{

  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {

    bool isSuper = true;
    if (isSuper== true) return const RouteSettings(name: "/Super");
  }
}