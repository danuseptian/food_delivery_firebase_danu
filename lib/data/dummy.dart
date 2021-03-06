// SRP
// Single Responsibility Principle
List carouselBanner = [
  {
    'carousel_image': 'assets/images/food-banner-1.jpg',
  },
  {
    'carousel_image': 'assets/images/food-banner-2.jpg',
  },
  {
    'carousel_image': 'assets/images/food-banner-3.jpg',
  },
  {
    'carousel_image': 'assets/images/food-banner-4.jpg',
  },
];

List categories = [
  {
    'categories': 'assets/icons/nearby.png',
    'name': 'Nearby',
  },
  {
    'categories': 'assets/icons/discount.png',
    'name': 'Discount',
  },
  {
    'categories': 'assets/icons/trophy.png',
    'name': 'Most Sales',
  },
  {
    'categories': 'assets/icons/24-hours.png',
    'name': '24 Hours',
  },
  {
    'categories': 'assets/icons/coupon.png',
    'name': 'Coupon',
  },
  {
    'categories': 'assets/icons/heart.png',
    'name': 'Most Liked',
  },
];

List profileOption = [
  'Payment Methods',
  'Scheduled',
  'Saved Places',
  'Emergency Contacts',
  'Business Profile',
  'Help Centre',
  'Settings',
  'Share',
  'Feedback'
];

List restaurants = [
  {
    'restaurant_image': 'assets/images/food-pizza.jpg',
    'name': 'Pizza Hut Delivery',
    'distance': 76,
    'rating': 4.9,
    'products': [
      {
        'product_name': 'Beef Sausage Mozzarella Pizza',
        'product_image': 'assets/images/pizza-1.jpg',
        'product_price': 9,
        'product_sales': 124,
        'product_liked': 72,
        'qty': 0,
      },
      {
        'product_name': 'Tomato Sausage Mozzarella Pizza',
        'product_image': 'assets/images/pizza-2.jpg',
        'product_price': 7,
        'product_sales': 112,
        'product_liked': 64,
        'qty': 0,
      },
      {
        'product_name': 'Beef Sausage Mozzarella Pizza',
        'product_image': 'assets/images/pizza-3.jpg',
        'product_price': 8,
        'product_sales': 80,
        'product_liked': 21,
        'qty': 0,
      },
      {
        'product_name': 'Beef Corn Chilli Mozzarella Pizza',
        'product_image': 'assets/images/pizza-4.jpg',
        'product_price': 10,
        'product_sales': 96,
        'product_liked': 42,
        'qty': 0,
      },
      {
        'product_name': 'Beef Mushroom Chilli Mozzarella Pizza',
        'product_image': 'assets/images/pizza-5.jpg',
        'product_price': 11,
        'product_sales': 241,
        'product_liked': 112,
        'qty': 0,
      },
    ],
  },
  {
    'restaurant_image': 'assets/images/food-sushi.jpg',
    'name': 'Midori Japanese Restaurant',
    'distance': 150,
    'rating': 4.8,
    'products': [
      {
        'product_name': 'Sushi Bundle',
        'product_image': 'assets/images/sushi-bundle.jpg',
        'product_price': 21,
        'product_sales': 98,
        'product_liked': 72,
        'qty': 0,
      },
      {
        'product_name': 'Sushi Norimaki',
        'product_image': 'assets/images/sushi-norimaki.jpg',
        'product_price': 6,
        'product_sales': 126,
        'product_liked': 88,
        'qty': 0,
      },
      {
        'product_name': 'Sushi Salmon',
        'product_image': 'assets/images/sushi-salmon.jpg',
        'product_price': 7,
        'product_sales': 144,
        'product_liked': 98,
        'qty': 0,
      },
      {
        'product_name': 'Sushi Tobiko',
        'product_image': 'assets/images/sushi-tobiko.jpg',
        'product_price': 8,
        'product_sales': 134,
        'product_liked': 121,
        'qty': 0,
      },
      {
        'product_name': 'Sushi Tori Salmon',
        'product_image': 'assets/images/sushi-torisalmon.jpg',
        'product_price': 6,
        'product_sales': 123,
        'product_liked': 124,
        'qty': 0,
      },
    ],
  },
  {
    'restaurant_image': 'assets/images/food-noodle.jpg',
    'name': 'Yun Sin Chinese Restaurant',
    'distance': 240,
    'rating': 4.8,
    'products': [
      {
        'product_name': 'Dimsum',
        'product_image': 'assets/images/chinese-dimsum.jpg',
        'product_price': 8,
        'product_sales': 112,
        'product_liked': 72,
        'qty': 0,
      },
      {
        'product_name': 'Spicy Fried Noodle',
        'product_image': 'assets/images/chinese-friednoodle.jpg',
        'product_price': 11,
        'product_sales': 132,
        'product_liked': 88,
        'qty': 0,
      },
      {
        'product_name': 'Soysauce Tofu',
        'product_image': 'assets/images/chinese-soysaucetofu.jpg',
        'product_price': 9,
        'product_sales': 96,
        'product_liked': 98,
        'qty': 0,
      },
      {
        'product_name': 'Mix Vegetable Chicken',
        'product_image': 'assets/images/chinese-vegetableschicken.jpg',
        'product_price': 13,
        'product_sales': 78,
        'product_liked': 121,
        'qty': 0,
      },
      {
        'product_name': 'Chicken Gyoza',
        'product_image': 'assets/images/chinese-gyoza.jpg',
        'product_price': 6,
        'product_sales': 211,
        'product_liked': 124,
        'qty': 0,
      },
    ],
  },
  {
    'restaurant_image': 'assets/images/food-toast.jpg',
    'name': 'Yummy Toast Express',
    'distance': 360,
    'rating': 4.9,
    'products': [
      {
        'product_name': 'Toast Mix Fruits',
        'product_image': 'assets/images/toast-fruits.jpg',
        'product_price': 13,
        'product_sales': 261,
        'product_liked': 138,
        'qty': 0,
      },
      {
        'product_name': 'Toast Strawberry',
        'product_image': 'assets/images/toast-strawberry.jpg',
        'product_price': 9,
        'product_sales': 221,
        'product_liked': 136,
        'qty': 0,
      },
      {
        'product_name': 'Toast Egg',
        'product_image': 'assets/images/toast-egg.jpg',
        'product_price': 8,
        'product_sales': 243,
        'product_liked': 146,
        'qty': 0,
      },
      {
        'product_name': 'Toast Honey',
        'product_image': 'assets/images/toast-honey.jpg',
        'product_price': 7,
        'product_sales': 156,
        'product_liked': 133,
        'qty': 0,
      },
      {
        'product_name': 'Toast Tomato',
        'product_image': 'assets/images/toast-tomato.jpg',
        'product_price': 11,
        'product_sales': 134,
        'product_liked': 122,
        'qty': 0,
      },
    ],
  },
  {
    'restaurant_image': 'assets/images/food-salad.jpg',
    'name': 'Healthy Fruity Salads',
    'distance': 526,
    'rating': 4.8,
    'products': [
      {
        'product_name': 'Dimsum',
        'product_image': 'assets/images/chinese-dimsum.jpg',
        'product_price': 8,
        'product_sales': 112,
        'product_liked': 72,
        'qty': 0,
      },
      {
        'product_name': 'Spicy Fried Noodle',
        'product_image': 'assets/images/chinese-friednoodle.jpg',
        'product_price': 11,
        'product_sales': 132,
        'product_liked': 88,
        'qty': 0,
      },
      {
        'product_name': 'Soysauce Tofu',
        'product_image': 'assets/images/chinese-soysaucetofu.jpg',
        'product_price': 9,
        'product_sales': 96,
        'product_liked': 98,
        'qty': 0,
      },
      {
        'product_name': 'assets/images/chinese-vegetableschicken.jpg',
        'product_image': 'assets/images/chinese-vegetableschicken.jpg',
        'product_price': 13,
        'product_sales': 78,
        'product_liked': 121,
        'qty': 0,
      },
      {
        'product_name': 'Chicken Gyoza',
        'product_image': 'assets/images/chinese-gyoza.jpg',
        'product_price': 6,
        'product_sales': 211,
        'product_liked': 124,
        'qty': 0,
      },
    ],
  },
  {
    'restaurant_image': 'assets/images/food-cake.jpg',
    'name': 'Cake Bakery Delivery',
    'distance': 766,
    'rating': 4.8,
    'products': [
      {
        'product_name': 'Salad Lettuce Onion Mayo',
        'product_image': 'assets/images/salad-lettuceonionmayo.jpg',
        'product_price': 12,
        'product_sales': 86,
        'product_liked': 77,
        'qty': 0,
      },
      {
        'product_name': 'Salad Cucumber Mayo',
        'product_image': 'assets/images/salad-cucumbermayo.jpg',
        'product_price': 8,
        'product_sales': 140,
        'product_liked': 99,
        'qty': 0,
      },
      {
        'product_name': 'Salad Bread Leaf Mayo',
        'product_image': 'assets/images/salad-breadleafmayo.jpg',
        'product_price': 9,
        'product_sales': 121,
        'product_liked': 89,
        'qty': 0,
      },
      {
        'product_name': 'Salad Tomato Bread',
        'product_image': 'assets/images/salad-tomatobread.jpg',
        'product_price': 10,
        'product_sales': 97,
        'product_liked': 73,
        'qty': 0,
      },
      {
        'product_name': 'Salad Lettuce Tomato Peas',
        'product_image': 'assets/images/salad-lettucetomatopeas.jpg',
        'product_price': 14,
        'product_sales': 67,
        'product_liked': 64,
        'qty': 0,
      },
    ],
  },
];
