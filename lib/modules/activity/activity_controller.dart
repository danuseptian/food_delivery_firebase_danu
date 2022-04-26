import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController {
  static CollectionReference order =
      FirebaseFirestore.instance.collection('order');

  Stream<QuerySnapshot> orderStream =
      order.orderBy('created_at', descending: true).snapshots();
  @override
  void onInit() async {
    update();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
