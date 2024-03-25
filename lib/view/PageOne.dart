import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page".tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: TextStyle(color: Colors.blue , fontSize: 25 , fontWeight: FontWeight.bold),
                  content: TextFormField(),
                  confirm: TextButton(onPressed: () {}, child: Text("Submit")),
                  cancel: TextButton(onPressed: () {}, child: Text("Cancel")),
                  
                ),
                child: const Text("Show Dialog")),
          ],
        ),
      ),
    );
  }
}
