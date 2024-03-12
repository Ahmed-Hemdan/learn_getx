import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/HomeController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Row(
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
