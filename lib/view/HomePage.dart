import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/HomeController.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Row(
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
                  child: Text("${controller.counter}")),
              IconButton(
                onPressed: () {
                  controller.deincrement();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
