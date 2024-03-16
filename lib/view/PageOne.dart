import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/services/SettingServices.dart';

class PageOne extends StatelessWidget {
   PageOne({super.key});
  final SettingServices c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page One")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingServices>(builder: (controller) {
              return Text(controller.counter.value.toString());
            }),
            ElevatedButton(onPressed: () {
              c.increase();
            },child: const Text("Counter increase"),),
            ElevatedButton(onPressed: () {
              c.sharedPref.clear();
            },child: const Text("Clear SharedPref"),),
          ],
        ),
      ),
    );
  }
}
