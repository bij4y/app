// To parse required this JSON data, do
//
//     final tailorModel = tailorModelFromJson(jsonString);

import 'dart:convert';

TailorModel tailorModelFromJson(String str) =>
    TailorModel.fromJson(json.decode(str));

String tailorModelToJson(TailorModel data) => json.encode(data.toJson());

class TailorModel {
  TailorModel({
    required this.data,
  });

  List<Datum> data;

  factory TailorModel.fromJson(Map<String, dynamic> json) => TailorModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.feature,
    required this.address,
    required this.contact,
    required this.rating,
    required this.products,
  });

  int id;
  String name;
  String description;
  int status;
  String feature;
  String address;
  String contact;
  Rating rating;
  List<Product> products;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        status: json["status"],
        feature: json["feature"],
        address: json["address"],
        contact: json["contact"],
        rating: Rating.fromJson(json["rating"]),
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "status": status,
        "feature": feature,
        "address": address,
        "contact": contact,
        "rating": rating.toJson(),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.sku,
    required this.name,
    required this.image,
    required this.sp,
    required this.description,
    required this.categoryId,
    required this.category,
    required this.userId,
  });

  int id;
  dynamic sku;
  String name;
  String image;
  int sp;
  String description;
  int categoryId;
  String category;
  String userId;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        sku: json["sku"],
        name: json["name"],
        image: json["image"],
        sp: json["sp"],
        description: json["description"],
        categoryId: json["category_id"],
        category: json["category"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sku": sku,
        "name": name,
        "image": image,
        "sp": sp,
        "description": description,
        "category_id": categoryId,
        "category": category,
        "user_id": userId,
      };
}

class Rating {
  Rating({
    required this.rating,
  });

  String rating;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "rating": rating,
      };
}
