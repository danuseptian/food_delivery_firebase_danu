import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/data/dummy.dart';
import 'package:food_delivery_firebase_danu/modules/restaurant_detail/restaurant_detail_view.dart';
import 'package:get/get.dart';

class RestaurantListView extends StatelessWidget {
  final dynamic data;
  const RestaurantListView({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: data != null ? Text('${data['name']}') : Text('Restaurant List'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(left: 8, top: 16, right: 8),
            child: Column(
              children: List.generate(restaurants.length, (index) {
                var item = restaurants[index];
                return InkWell(
                  onTap: () {
                    Get.to(() => RestaurantDetailView(
                          restaurant: item,
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)),
                          child: Image.asset(
                            '${item['restaurant_image']}',
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
                                  '${item['name']}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text('${item['rating']}'),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 18,
                                      width: 2,
                                      color: Colors.grey[300],
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                    Text('${item['distance']} m'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
