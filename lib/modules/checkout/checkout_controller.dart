import 'package:food_delivery_firebase_danu/data/dummy.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  resetQty() {
    for (var i = 0; i < restaurants.length; i++) {
      var products = restaurants[i]['products'];

      for (var product in products) {
        product['qty'] = 0;
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
