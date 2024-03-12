import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/PageOne.dart';

import 'PageTwo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            onPressed: () {
              Get.to( () => const PageOne());
            },
            child: const Text("Page One"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const PageTwo());
            },
            child: const Text("Page Two"),
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
