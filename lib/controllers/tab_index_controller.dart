import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}