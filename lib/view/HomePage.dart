import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/utilities/binding.dart';

import 'package:learn_getx/view/PageTwo.dart';

import 'PageOne.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // if you wanna make sure you dont lose your data of your controller you can use  
  // ====> final PageOneController controllerr= Get.put(PageOneController() , permanent: true );
  // permanent make controller instance always available  and save your data but that's use more memory 
  // lazyPut make controller instance only once when app start and not again and again
  // if you want to make controller stay without data just like new controller instance 
  // you can use fenix that's make you delete data without dispose your contrller  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //this binding for just this page
                //but you getout from screen all variables reset 
                // cuz this binding for just this page 
                Get.to(() => PageOne() , binding: MyBinding());
              },
              child: const Text("Page One"),
            ),
            ElevatedButton(
              onPressed: () {
                //this binding for just this page
                Get.to(() => PageTwo() , binding: MyBinding() ) ;
              },
              child: const Text("Page Two"),
            ),
          ],
        ),
      ),
    );
  }
}
