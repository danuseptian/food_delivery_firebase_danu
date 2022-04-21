import 'package:food_delivery_firebase_danu/data/dummy.dart';
import 'package:get/get.dart';

class RestaurantDetailController extends GetxController {
  double getTotal() {
    //loop 1
    double total = 0;
    for (var i = 0; i < restaurants.length; i++) {
      var products = restaurants[i]['products'];

      // loop 2
      //alternative 1
      for (var product in products) {
        total = total + product['qty'] * product['product_price'];
        // print(product['qty']);
      }

      //alternative 2
      // for (var n = 0; n < products.length; n++) {
      //   var product = products[n];
      //   total = total + product['qty'] * product['product_price'];
      //   print(product['qty']);
      // }
    }
    return total;
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
