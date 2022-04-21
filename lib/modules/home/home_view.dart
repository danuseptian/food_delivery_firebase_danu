import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/home/home_controller.dart';
import 'package:food_delivery_firebase_danu/modules/home/widgets/home_carousel_banner.dart';
import 'package:get/get.dart';

import 'widgets/home_categories.dart';
import 'widgets/home_nearbylist.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeCarouselBanner(),
              HomeCategories(),
              HomeNearbyList(),
            ],
          ),
        ),
      ),
    );
  }
}
