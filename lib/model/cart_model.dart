// To parse required this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  CartModel({
    required this.data,
  });

  List<Datum> data;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.productId,
    required this.productName,
    required this.qty,
    required this.rate,
    required this.amount,
  });

  int id;
  int productId;
  String productName;
  int qty;
  int rate;
  int amount;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        productId: json["product_id"],
        productName: json["product_name"],
        qty: json["qty"],
        rate: json["rate"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "product_name": productName,
        "qty": qty,
        "rate": rate,
        "amount": amount,
      };
}
