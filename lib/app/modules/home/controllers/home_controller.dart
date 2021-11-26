import 'package:get/get.dart';

var PositionList = [];
  var FutureList = Future.value().obs;
class HomeController extends GetxController {


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    PositionList.add('position');
    FutureList.value = Future.value(PositionList);
  }

}
