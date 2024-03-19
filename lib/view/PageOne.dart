import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/Localization/LocalController.dart';



class PageOne extends StatelessWidget {
   const PageOne({super.key});


  @override
  Widget build(BuildContext context) {
    MyLocalController c = Get.put(MyLocalController());
    return Scaffold(
      appBar: AppBar(title:  Text("Home Page".tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {
                c.changeLang("en");
            },child:  Text("English".tr),),
            ElevatedButton(onPressed: () {
                c.changeLang("ar");
            },child:  Text("Arabic".tr),),
          ],
        ),
      ),
    );
  }
}
