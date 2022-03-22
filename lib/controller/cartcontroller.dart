import 'package:flutter_tailor_app/model/rating_model.dart';
import 'package:flutter_tailor_app/model/tailormodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
        "Product Added", "You have added ${_products[product]} to the cart",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(milliseconds: 2000));
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get items => _products.entries.length;
  get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.sp * product.value)
      .toList();
  get quantity => products.value;

  get total => _products.entries
      .map((product) => product.key.sp * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toString();

  // void addRating(Rating rating) {
  //   if (_products.containsKey(rating)) {
  //     _products[rating] += Ratin;
  //   } else {
  //     _products[rating] = 0;
  //   }
  // }
}
