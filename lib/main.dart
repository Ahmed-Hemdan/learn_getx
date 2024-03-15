import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/utilities/binding.dart';
import 'package:learn_getx/view/HomePage.dart';
import 'package:learn_getx/view/PageOne.dart';

import 'view/PageTwo.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      /* 
      this binding for all app  
      initialBinding: MyBinding(),
      if you getout from screen the value stay on cuz this binding for all app not just one screen 
      */
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
