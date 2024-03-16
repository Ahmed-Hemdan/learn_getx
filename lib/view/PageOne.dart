import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/main.dart';



class PageOne extends StatelessWidget {
 const  PageOne({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page One")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async{
                     await sharedPreferences!.setString("id", "1");
              Get.toNamed( "/PageTwo");
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
