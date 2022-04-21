import 'data/dummy.dart';

List restaurants1 = [
  //0
  {
    "restaurant_name": "Restaurant xxx",
    "address": "Bogor",
    "foods": [
      {
        "food_name": "Nasi Goreng Mentenga",
        "price": 15,
      },
      {
        "food_name": "Air Mineral",
        "price": 25,
      }
    ],
  },
  //1
  {
    "restaurant_name": "Restaurant xxx",
    "address": "Bogor",
    "foods": [
      {
        "food_name": "Nasi Goreng Mentenga",
        "price": 15,
      },
      {
        "food_name": "Air Mineral",
        "price": 25,
      }
    ],
  },
  //2
  {
    "restaurant_name": "Restaurant xxx",
    "address": "Bogor",
    "foods": [
      {
        "food_name": "Nasi Goreng Mentenga",
        "price": 15,
      },
      {
        "food_name": "Air Mineral",
        "price": 25,
      }
    ],
  }
];

//*******/

void main() {
  // print(restaurants);

  // for (var restaurant in restaurants) {
  //   var foods = restaurant["foods"];
  //   print(foods);
  // }

  for (var i = 0; i < restaurants.length; i++) {
    var restaurant = restaurants[i];
    //ini products  ga ada kalau di variable resturants yang ini, adanya foods
    var products = restaurant["products"];

    for (var product in products) {
      print("--------------------------------");
      print("product_name: ${product["product_name"]}");
      print("qty: ${product["qty"]}");
      print("price: ${product["product_price"]}");

      if (product["qty"] == null) {
        print("-------------------------");
        print("Item ini ga punya qty? ");
        print(product);
        print("-------------------------");
      }

      if (product["product_price"] == null) {
        print("-------------------------");
        print("Item ini ga punya price? ");
        print(product);
        print("-------------------------");
      }
    }
  }

  // for (var i = 0; i < restaurants.length; i++) {
  //   var foods = restaurants[i]["foods"];
  //   print(foods);
  // }
}


 // var id = xzxx;
    // var response = GetConnect().get("https://example.com/product/${id}");
    // products = response.data;