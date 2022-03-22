// To parse this JSON data, do
//
//     final ratingModel = ratingModelFromJson(jsonString);

import 'dart:convert';

List<RatingModel> ratingModelFromJson(String str) => List<RatingModel>.from(
    json.decode(str).map((x) => RatingModel.fromJson(x)));

String ratingModelToJson(List<RatingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RatingModel {
  RatingModel({
    required this.rating,
    required this.categoryId,
  });

  String rating;
  int categoryId;

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        rating: json["rating"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "rating": rating,
        "category_id": categoryId,
      };
}
