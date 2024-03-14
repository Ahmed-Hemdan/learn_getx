import 'package:get/get.dart';

class PageOneController extends GetxController{
  int counter = 5 ;
  void increment(){
    counter++;
  update();
  }
  void deincrement(){
    counter--;
  update();
  }
}