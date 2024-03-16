import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/middleware/middleware.dart';
import 'package:learn_getx/view/PageOne.dart';
import 'package:learn_getx/view/PageTwo.dart';

import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
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

      // even if you use initialRoute app will check middleware first and navigate you to PageTwo

      initialRoute: '/',
      getPages: [
        GetPage(
          name: "/",
          page: () => const PageOne(),
          middlewares: [
            Middleware(),
          ],
        ),
        GetPage(
          name: "/PageTwo",
          page: () => const PageTwo(),
        )
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
