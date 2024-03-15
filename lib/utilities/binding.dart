import 'package:get/get.dart';
import 'package:learn_getx/controller/PageOneController.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    /*
     you need to use put if you want to make controller data stay
    if you use it with navigate you will lose your data if you getout from screen
    but you can fix it will permanent oprator  
       Get.put(PageOneController() , permanent: true );
     */
   
//====================================================================================================================================
       /* 
       you can use lazyput too but your controller will disappear after you getout from screen if you call it on initial binding
       if you use it with navigate you will lose your data if you getout from screen but the controller will intialize again
        so you don't have error but you don't have your data even if you use fenix 
       */
        
      
       /*
          if you use lazyput with navigate you the controller will intialize again every time you open the screen
          but you still will lose your data if you getout from screen so be careful even if you use fenix 
       */
       
       Get.lazyPut(() => PageOneController() , fenix: true ); 
  }

}