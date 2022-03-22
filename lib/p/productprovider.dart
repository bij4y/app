// import 'package:flutter/cupertino.dart';
// import 'package:flutter_tailor_app/model/productmodel.dart';

// class ProductProvider extends ChangeNotifier {
//   int _totalItems = 0;
//   double _totalAmount = 0;
//   List<ProductModel> _products = [];

//   bool flag = false;
//   int index = 0;

//   void addProduct(String id, String name, int qty, int sp, String img) {
//     if (_products.length == 0) {
//       _totalItems++;
//       _products.add(ProductModel(
//           id: id, name: name, qty: qty, sp: sp, image: img, amount: 0));
//       _products[0].amount = qty * sp;
//       _totalAmount = _totalAmount + _products[0].amount;
//     } else {
//       for (var product in _products) {
//         if (product.id == id) {
//           flag = true;
//           break;
//         }
//         index++;
//       }
//       if (flag == true) {
//         _products[index].qty = _products[index].qty + qty;
//         _products[index].amount = _products[index].qty * sp;
//         _totalAmount = _totalAmount + (sp * qty);
//         index = 0;
//         flag = false;
//       }
//     }

//     notifyListeners();
//   }

//   void removeProduct(String id) {
//     for (var product in _products) {
//       if (product.id == id) {
//         flag = true;
//         break;
//       }
//       index++;
//     }
//     if (flag == true) {
//       _totalItems--;
//       _totalAmount = _totalAmount - products[index].amount;
//       products.remove(products[index]);
//       index = 0;
//       flag = false;
//     }
//     notifyListeners();
//   }

//   void reset() {
//     _products.clear();
//     _totalAmount = 0;
//     _totalItems = 0;
//   }

//   int get totalItems {
//     return _totalItems;
//   }

//   double get totalAmount {
//     return _totalAmount;
//   }

//   List<ProductModel> get products {
//     return _products;
//   }
// }
