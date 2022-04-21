import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/modules/home/home_view.dart';
import 'package:get/get.dart';

import '../activity/activity_view.dart';

class DashboardController extends GetxController {
  final selectedIndex = 0.obs;
  void onItemTapped(int index) => selectedIndex.value = index;

  List<Widget> bottomTabView = [
    HomeView(),
    ActivityView(),
    Container(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
