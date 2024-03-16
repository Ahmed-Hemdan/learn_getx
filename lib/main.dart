import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/services/SettingServices.dart';
import 'package:learn_getx/view/PageOne.dart';


Future initial()async{
  await Get.putAsync(() => SettingServices().init());
}




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initial();
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
      home: PageOne(),
    );
  }
}
