import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/checkout/checkout_controller.dart';
import 'package:food_delivery_firebase_danu/modules/checkout/widgets/checkout_total.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_controller.dart';
import 'package:get/get.dart';

import 'widgets/checkout_placeorder.dart';

class CheckoutView extends StatelessWidget {
  final dynamic restaurant;
  const CheckoutView({Key? key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(CheckoutController());

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CheckoutPlaceOrder(
          restaurant: restaurant,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 20),
                Column(
                  children:
                      List.generate(restaurant['products'].length, (index) {
                    var item = restaurant['products'][index];
                    return Column(
                      children: [
                        if (item['qty'] > 0)
                          ListTile(
                            leading: Text(
                              '${item['qty']} x',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            title: Row(
                              children: [
                                Container(
                                  width: 250,
                                  child: Text(
                                    '${item['product_name']}',
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 40,
                                  alignment: Alignment.topLeft,
                                  child: Text('\$ ${item['product_price']}'),
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  }),
                ),
                CheckoutTotal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
