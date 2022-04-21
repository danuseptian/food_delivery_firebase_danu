import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_controller.dart';
import 'package:get/get.dart';

class CheckoutTotal extends StatelessWidget {
  const CheckoutTotal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerRestoDetail = Get.find<RestaurantDetailController>();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            'Subtotal',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            width: 100,
            child: Text(
              '\$ ${controllerRestoDetail.getTotal()}',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
          ),
        ],
      ),
    );
  }
}
