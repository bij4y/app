// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.userType,
    required this.emailVerifiedAt,
  });

  int id;
  String name;
  String email;
  String mobile;
  String userType;
  dynamic emailVerifiedAt;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        userType: json["user_type"],
        emailVerifiedAt: json["email_verified_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "user_type": userType,
        "email_verified_at": emailVerifiedAt,
      };
}
