// To parse this JSON data, do
//
//     final onboardingModel = onboardingModelFromJson(jsonString);

import 'dart:convert';

List<OnboardingModel> onboardingModelFromJson(String str) =>
    List<OnboardingModel>.from(
        json.decode(str).map((x) => OnboardingModel.fromJson(x)));

String onboardingModelToJson(List<OnboardingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OnboardingModel {
  OnboardingModel({
    required this.id,
    required this.name,
    required this.feature,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String feature;
  DateTime createdAt;
  DateTime updatedAt;

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      OnboardingModel(
        id: json["id"],
        name: json["name"],
        feature: json["feature"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "feature": feature,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
