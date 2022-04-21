import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_list/restaurant_list_view.dart';
import 'package:get/get.dart';

import '../../../data/dummy.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: List.generate(
            6,
            (index) {
              var item = categories[index];
              return InkWell(
                onTap: () {
                  Get.to(() => RestaurantListView(
                        data: item,
                      ));
                },
                child: Container(
                  width: 80,
                  child: Column(
                    children: [
                      Image.asset(
                        '${item['categories']}',
                        height: 40,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${item['name']}',
                        maxLines: 2,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
