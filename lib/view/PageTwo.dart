import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';


class PageTwo extends StatelessWidget {
 const PageTwo({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Two")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async{
                      await sharedPreferences!.remove("id");
              Get.toNamed( "/");
            }, child: const Text("Log Out"))
          ],
        ),
      ),
    );
  }
}
