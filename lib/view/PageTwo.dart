import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/PageOneController.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});

  final PageOneController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<PageOneController>(
              builder: (controller) => Text("${controller.counter}"),
            ),
          ],
        ),
      ),
    );
  }
}
