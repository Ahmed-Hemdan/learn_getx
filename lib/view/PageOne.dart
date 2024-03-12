import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/Home.dart';

import 'PageTwo.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Home Page"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(() => const PageTwo());
            },
            child: const Text("Page Two (off)"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Page Three"),
          ),
        ]),
      ),
    );
  }
}