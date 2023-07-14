class Product {
  List<Banner> banners;
  List<Cuisine> cuisines;
  List<Deal> listRestaurants;
  List<Dish> dishes;

  Product({
    required this.banners,
    required this.cuisines,
    required this.listRestaurants,
    required this.dishes,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        banners:
            List<Banner>.from(json["banners"].map((x) => Banner.fromJson(x))),
        cuisines: List<Cuisine>.from(
            json["cuisines"].map((x) => Cuisine.fromJson(x))),
        listRestaurants: List<Deal>.from(
            json["listRestaurants"].map((x) => Deal.fromJson(x))),
        dishes: List<Dish>.from(json["dishes"].map((x) => Dish.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "banners": List<dynamic>.from(banners.map((x) => x.toJson())),
        "cuisines": List<dynamic>.from(cuisines.map((x) => x.toJson())),
        "listRestaurants":
            List<dynamic>.from(listRestaurants.map((x) => x.toJson())),
        "dishes": List<dynamic>.from(dishes.map((x) => x.toJson())),
      };
}

class Banner {
  int bannerId;
  String bannerImage;

  Banner({
    required this.bannerId,
    required this.bannerImage,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        bannerId: json["bannerId"],
        bannerImage: json["bannerImage"],
      );

  Map<String, dynamic> toJson() => {
        "bannerId": bannerId,
        "bannerImage": bannerImage,
      };
}

class Cuisine {
  int id;
  String image;
  String name;

  Cuisine({
    required this.id,
    required this.image,
    required this.name,
  });

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
        id: json["id"],
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
      };
}

enum Unit { ETB }

final unitValues = EnumValues({"ETB": Unit.ETB});

class Deal {
  int restaurantId;
  String restaurantName;
  String restaurantImage;
  String isOpen;
  Unit unit;
  String location;
  String averageReview;
  DisplayTime displayTime;

  Deal({
    required this.restaurantId,
    required this.restaurantName,
    required this.restaurantImage,
    required this.isOpen,
    required this.unit,
    required this.location,
    required this.averageReview,
    required this.displayTime,
  });

  factory Deal.fromJson(Map<String, dynamic> json) => Deal(
        restaurantId: json["restaurantId"],
        restaurantName: json["restaurantName"],
        restaurantImage: json["restaurantImage"],
        isOpen: json["isOpen"],
        unit: unitValues.map[json["unit"]]!,
        location: json["location"],
        averageReview: json["averageReview"],
        displayTime: displayTimeValues.map[json["displayTime"]]!,
      );

  Map<String, dynamic> toJson() => {
        "restaurantId": restaurantId,
        "restaurantName": restaurantName,
        "restaurantImage": restaurantImage,
        "isOpen": isOpen,
        "unit": unitValues.reverse[unit],
        "location": location,
        "averageReview": averageReview,
        "displayTime": displayTimeValues.reverse[displayTime],
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum DisplayTime { THE_30_MINS, THE_25_MINS, THE_40_MINS, THE_20_MINS }

final displayTimeValues = EnumValues({
  "20  mins": DisplayTime.THE_20_MINS,
  "25  mins": DisplayTime.THE_25_MINS,
  "30  mins": DisplayTime.THE_30_MINS,
  "40  mins": DisplayTime.THE_40_MINS
});

class Dish {
  int id;
  String name;
  double price;
  String image;
  String outlet;

  Dish({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.outlet,
  });

  factory Dish.fromJson(Map<String, dynamic> json) => Dish(
        id: json["id"],
        name: json["name"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        outlet: json["outlet"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "image": image,
        "outlet": outlet,
      };
}
