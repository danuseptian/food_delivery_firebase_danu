import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/checkout/checkout_controller.dart';
import 'package:food_delivery_firebase_danu/service/firestore_service.dart';
import 'package:get/get.dart';

import '../../dashboard/dashboard_view.dart';
import '../../restaurant_detail/restaurant_detail_controller.dart';

class CheckoutPlaceOrder extends StatelessWidget {
  final dynamic restaurant;
  const CheckoutPlaceOrder({Key? key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CheckoutController>();
    final restoDetailC = Get.find<RestaurantDetailController>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Place Order',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                FirestoreService.addOrder(
                    restaurant['name'], restoDetailC.getTotal());
                controller.resetQty();
                AwesomeDialog(
                  context: context,
                  animType: AnimType.LEFTSLIDE,
                  headerAnimationLoop: false,
                  dialogType: DialogType.SUCCES,
                  title: 'Success',
                  desc: 'Your order has been placed.',
                  btnOkOnPress: () {
                    Get.offAll(() => DashboardView());
                  },
                  btnOkIcon: Icons.check_circle,
                  onDissmissCallback: (type) {
                    Get.offAll(() => DashboardView());
                  },
                ).show();
              },
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
    );
  }
}
