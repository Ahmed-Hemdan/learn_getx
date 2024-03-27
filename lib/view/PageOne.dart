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
                onPressed: () => Get.snackbar("title", "nnfnmessage" , snackPosition: SnackPosition.values[2]),
                child: const Text("Show Snackbar")),
          ],
        ),
      ),
    );
  }
}
