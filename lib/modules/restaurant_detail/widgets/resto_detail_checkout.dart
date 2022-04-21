import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/checkout/checkout_view.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_controller.dart';
import 'package:get/get.dart';

class RestoDetailCheckout extends StatelessWidget {
  final dynamic restaurant;
  const RestoDetailCheckout({Key? key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RestaurantDetailController>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Total :',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 15),
          GetBuilder<RestaurantDetailController>(
            builder: (_) {
              return Text(
                '\$ ${controller.getTotal()}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              );
            },
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Get.to(() => CheckoutView(restaurant: restaurant));
            },
            child: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.deepOrange,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
