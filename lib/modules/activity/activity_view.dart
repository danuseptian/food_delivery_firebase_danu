import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/activity/activity_controller.dart';
import 'package:food_delivery_firebase_danu/service/firestore_service.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ActivityController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: Text('Activity History'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: StreamBuilder<QuerySnapshot>(
                stream: controller.orderStream,
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      snapshot.connectionState == ConnectionState.active
                          ? Column(
                              children: List.generate(
                                  snapshot.data!.docs.length, (index) {
                                var item = snapshot.data!.docs[index];
                                return Card(
                                  child: ListTile(
                                    onTap: () {},
                                    title: Text('${item['restaurant']}'),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\$ ${item['total']}'),
                                        Container(
                                          child: Text(
                                            '${item['date']}',
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: InkWell(
                                        onTap: () {
                                          FirestoreService.deleteOrder(item.id);
                                        },
                                        child: Icon(Icons.delete)),
                                  ),
                                );
                              }),
                            )
                          : Container(),
                    ],
                  );
                }),
          ),
        ));
  }
}
