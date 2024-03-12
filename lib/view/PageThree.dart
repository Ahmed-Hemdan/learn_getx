import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/Home.dart';


class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            onPressed: () {
              Get.offAll( () => const HomePage());
            },
            child: const Text("Page Home"),
          ),
          ElevatedButton(
            onPressed: () {},
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