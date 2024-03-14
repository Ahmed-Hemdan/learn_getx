import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/PageOneController.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  final contrllerr = Get.lazyPut(() => PageOneController());
  final PageOneController controller = Get.find();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page One"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.increment();
              },
              icon: const Icon(Icons.add),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GetBuilder<PageOneController>(
                builder: (controller) => Text("${controller.counter}"),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.deincrement();
              },
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
