import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_view.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_list/restaurant_list_view.dart';
import 'package:get/get.dart';

import '../../../data/dummy.dart';

class HomeNearbyList extends StatelessWidget {
  const HomeNearbyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nearby',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => RestaurantListView());
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(restaurants.length, (index) {
                var item = restaurants[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => RestaurantDetailView(
                              restaurant: item,
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              '${item['restaurant_image']}',
                              height: 170,
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 40,
                              width: 140,
                              child: Text(
                                '${item['name']}',
                                style: TextStyle(fontSize: 16),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
