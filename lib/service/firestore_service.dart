import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_firebase_danu/data/dummy.dart';
import 'package:intl/intl.dart';

class FirestoreService {
  static CollectionReference order =
      FirebaseFirestore.instance.collection('order');

  static Future addOrder(String restaurant, double total) {
    var date = DateFormat.yMMMd().add_jm().format(DateTime.now());
    return order
        .add(
          {
            'restaurant': restaurant,
            'total': total,
            'date': date,
            'created_at': Timestamp.now().toDate(),
          },
        )
        .then((value) => print('Order Added'))
        .catchError((error) => print('Failed to add order: $error'));
  }

  static Future deleteOrder(String docId) {
    return order
        .doc(docId)
        .delete()
        .then((value) => print('Order deleted'))
        .catchError((error) => print('Failed to delete order: $error'));
  }
}
