import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_controller.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/widgets/resto_detail_checkout.dart';
import 'package:get/get.dart';

class RestaurantDetailView extends StatelessWidget {
  final dynamic restaurant;
  const RestaurantDetailView({Key? key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RestaurantDetailController());
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: RestoDetailCheckout(
          restaurant: restaurant,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: restaurant != null
            ? Text('${restaurant['name']}')
            : Text('Restaurant List'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(left: 8, top: 16, right: 8),
            child: Column(
              children: List.generate(restaurant["products"].length, (index) {
                var item = restaurant["products"][index];
                return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16)),
                        child: Image.asset(
                          '${item['product_image']}',
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                '${item['product_name']}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Text('${item['product_sales']} sales'),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 18,
                                    width: 2,
                                    color: Colors.grey[300],
                                  ),
                                  Text('Liked by ${item['product_liked']}'),
                                ],
                              ),
                            ),
                            Container(
                              width: 220,
                              child: Row(
                                children: [
                                  Text(
                                    '\$ ${item['product_price']}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  GetBuilder<RestaurantDetailController>(
                                    builder: (_) {
                                      return Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      if (item['qty'] > 0)
                                                        item['qty']--;
                                                      controller.update();
                                                    },
                                                    child: Container(
                                                      height: 25,
                                                      width: 25,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .deepOrange)),
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 20,
                                                        color:
                                                            Colors.deepOrange,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      '${item['qty']}',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  InkWell(
                                    onTap: () {
                                      item['qty']++;
                                      controller.update();
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      color: Colors.deepOrange,
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
