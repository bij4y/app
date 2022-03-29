import 'dart:convert';

import 'package:flutter_tailor_app/model/cart_model.dart';
import 'package:flutter_tailor_app/model/onboarding.dart';
import 'package:flutter_tailor_app/model/product.dart';
import 'package:flutter_tailor_app/model/tailormodel.dart';
import 'package:flutter_tailor_app/model/usermodel.dart';
import 'package:flutter_tailor_app/views/login.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class RemoteService {
  static String baseUrl = "http://192.168.18.8:8000/api";
  static var client = http.Client();
  Future<TailorModel?> fetchTailorData() async {
    try {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // String? token = preferences.getString('token');

      var response =
          await client.get(Uri.parse("$baseUrl/categorywith"), headers: {
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token'
      });
      if (response.statusCode == 200) {
        var jsonData = response.body;
        return tailorModelFromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  Future<ProductModel?> fetchTailorDetail(int id) async {
    try {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // String? token = preferences.getString('token');

      var response =
          await client.get(Uri.parse("$baseUrl/categorywith/$id"), headers: {
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token'
      });
      if (response.statusCode == 200) {
        var jsonData = response.body;
        return productModelFromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  // Future<Product> productData() async {
  //   try {
  //     SharedPreferences preferences = await SharedPreferences.getInstance();
  //     String? token = preferences.getString('token');

  //     var response = await http.get(Uri.parse("$baseUrl/categorywith"),
  //         headers: {
  //           'Accept': 'application/json',
  //           'Authorization': 'Bearer $token'
  //         });
  //     if (response.statusCode == 200) {
  //       var jsonData = response.body;
  //        return Product.fromJson(jsonData);

  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   }
  // }

  // Future<UserModel?> userName() async {
  //   try {
  //     SharedPreferences preferences = await SharedPreferences.getInstance();
  //     String? token = preferences.getString('token');

  //     var response = await http.get(Uri.parse("$baseUrl/user"), headers: {
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer $token'
  //     });
  //     if (response.statusCode == 200) {
  //       var jsonData = jsonDecode(response.body);
  //       return UserModel.fromJson(jsonData);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   }
  // }

  Future loginRegister() async {
    try {
      var response = await http.post(Uri.parse("$baseUrl/login"), headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        var jsonData = response.body;
        return jsonEncode(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  Future<UserModel?> userName() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? token = preferences.getString('token');

      var response = await http.get(Uri.parse("$baseUrl/user"), headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        return UserModel.fromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  // Future<List<RatingModel>?> ratingData() async {
  //   try {
  //     SharedPreferences preferences = await SharedPreferences.getInstance();
  //     String? token = preferences.getString('token');

  //     var response = await http.get(Uri.parse("$baseUrl/showrating"), headers: {
  //       'Accept': 'application/json',
  //       'Authorization': 'Bearer $token'
  //     });
  //     if (response.statusCode == 200) {
  //       var jsonData = response.body;
  //       return ratingModelFromJson(jsonData);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   }
  // }

  Future<OnboardingModel?> firstOnboarding() async {
    try {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // String? token = preferences.getString('token');

      var response = await http.get(Uri.parse("$baseUrl/onboarding"), headers: {
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        return OnboardingModel.fromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  Future<OnboardingModel?> secondOnboarding() async {
    try {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // String? token = preferences.getString('token');

      var response =
          await http.get(Uri.parse("$baseUrl/onboarding1"), headers: {
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        return OnboardingModel.fromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  Future<OnboardingModel?> thirdOnboarding() async {
    try {
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // String? token = preferences.getString('token');

      var response =
          await http.get(Uri.parse("$baseUrl/onboarding2"), headers: {
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        return OnboardingModel.fromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  static Future addToCart(Map data) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? token = preferences.getString('token');

      var response = await client.post(Uri.parse("$baseUrl/cart"),
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(data));
      if (response.statusCode == 401) {
        Get.to(const LoginScreen());
      }
      print(response.body);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  static Future deleteCatItem(int id) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? token = preferences.getString('token');

      var response = await client.delete(
        Uri.parse("$baseUrl/cart/$id"),
        headers: {
          'Accept': 'application/json',
          'Content-type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      );
      print(response.body);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  //Fetch Cart Items
  Future<CartModel?> fetchCartDetails() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? token = preferences.getString('token');

      var response = await client.get(Uri.parse("$baseUrl/cart"), headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });
      if (response.statusCode == 200) {
        var jsonData = response.body;
        return cartModelFromJson(jsonData);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
