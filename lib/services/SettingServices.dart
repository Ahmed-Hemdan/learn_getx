import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPref;
  RxInt counter = 0.obs;
  Future<SettingServices> init() async {
    // you can call every thing you want to init here 
    sharedPref = await SharedPreferences.getInstance();
    counter.value = sharedPref.getInt("counter") ?? 0;
    return this;
  }

  void increase() {
    counter++;
    sharedPref.setInt("counter", counter.value);
  }
}
