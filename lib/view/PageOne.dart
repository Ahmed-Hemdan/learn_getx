import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PageOne extends StatelessWidget {
   const PageOne({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Home Page".tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {

            },child:  Text("English".tr),),
            ElevatedButton(onPressed: () {

            },child:  Text("Arabic".tr),),
          ],
        ),
      ),
    );
  }
}
