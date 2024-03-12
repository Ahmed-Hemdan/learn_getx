import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'PageOne.dart';
import 'PageThree.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
          ElevatedButton(
            onPressed: () {
              Get.to(() =>const PageOne());
            },
            child: const Text("Page One"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Page Two"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offNamed('/PageThree');
            },
            child: const Text("Page Three"),
          ),
        ]),
      ),
    );
  }
}