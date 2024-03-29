import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/PageOne.dart';
import 'package:shared_preferences/shared_preferences.dart';




late SharedPreferences sharedpref;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   sharedpref = await SharedPreferences.getInstance();
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
    );
  }
}
