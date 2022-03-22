// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/api/api.dart';
// import 'package:flutter_tailor_app/controller/cartcontroller.dart';
// import 'package:flutter_tailor_app/controller/usercontroller.dart';
// import 'package:get/get.dart';

// class ConfirmPage extends StatelessWidget {
//   ConfirmPage({Key? key}) : super(key: key);
//   final GlobalKey<FormState> _key = GlobalKey<FormState>();
//   TextEditingController name = TextEditingController();
//   TextEditingController address = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     CartController controller = Get.find();
//     var usercontroller = Get.find<UserController>();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Confirm"),
//       ),
//       body: SingleChildScrollView(
//         child: Obx(
//           () => Column(
//             children: [
//               Form(
//                 key: _key,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                           readOnly: true,
//                           decoration: InputDecoration(
//                             hintText: usercontroller.user.value.email,
//                             hintStyle: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           )),
//                     ),

//                     // Padding(
//                     //   padding: const EdgeInsets.all(8.0),
//                     //   child: TextFormField(
//                     //       readOnly: true,
//                     //       decoration: InputDecoration(
//                     //         hintText: usercontroller.user.value.email,
//                     //         hintStyle: TextStyle(
//                     //             fontSize: 20, fontWeight: FontWeight.bold),
//                     //       )),
//                     // ),
//                     // Padding(
//                     //   padding: const EdgeInsets.all(8.0),
//                     //   child: TextFormField(
//                     //       readOnly: true,
//                     //       decoration: InputDecoration(
//                     //         hintText: usercontroller.user.value.mobile,
//                     //         hintStyle: TextStyle(
//                     //             fontSize: 20, fontWeight: FontWeight.bold),
//                     //       )),
//                     // ),
//                     TextFormField(
//                       controller: address,
//                       decoration:
//                           InputDecoration(hintText: " Delivery Address"),
//                     ),
//                   ],
//                 ),
//               ),
//               Obx(() => Text("Total :" + controller.total.toString())),
//               ElevatedButton(
//                   onPressed: () async {
//                     // print(controller.quantity);
//                     if (_key.currentState!.validate()) {
//                       Map data = {
//                         'address': address.text,
//                         'total': controller.total,
//                         'products': controller.products.map((e) {
//                           // print(e.quantity);
//                           return {
//                             'product_id': e.id,
//                             'qty': e.quantity,
//                             'amount': e.sp,
//                           };
//                         }).toList(),
//                       };

//                       var response = await Api()
//                           .postData(data, 'invoice')
//                           .whenComplete(() {
//                         // controller.removeProduct();
//                         Navigator.pushNamed(context, 'dashboard');
//                       });
//                       var result = json.decode(response.body);
//                       // print(response.statuscode);
//                       print(result);
//                     }
//                   },
//                   child: Text("Confirm"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// // import 'dart:convert';

// // import 'package:flutter/material.dart';
// // import 'package:flutter_tailor_app/api/api.dart';
// // import 'package:flutter_tailor_app/controller/cartcontroller.dart';
// // import 'package:flutter_tailor_app/model/tailormodel.dart';
// // import 'package:get/get.dart';
// // import 'package:provider/provider.dart';

// // class ConfirmPage extends StatefulWidget {
// //   @override
// //   _ConfirmPageState createState() => _ConfirmPageState();
// // }

// // class _ConfirmPageState extends State<ConfirmPage> {
// //   GlobalKey<FormState> _key = GlobalKey<FormState>();
// //   TextEditingController name = TextEditingController();
// //   TextEditingController address = TextEditingController();
// //   Future getProducts() async {
// //     var response = await Api().getData('user');
// //     var data = json.decode(response.body);
// //     print(data);
// //     name.text = data['name'];
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     getProducts();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     CartController controller = Get.find();
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Confirm"),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Form(
// //               key: _key,
// //               child: Column(
// //                 children: [
// //                   // TextFormField(
// //                   //   controller: name,
// //                   //   decoration: InputDecoration(
// //                   //       border: OutlineInputBorder(
// //                   //           borderRadius: BorderRadius.circular(25))),
// //                   // ),
// //                   TextFormField(
// //                     controller: address,
// //                     decoration: InputDecoration(hintText: " Delivery Address"),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             Obx(() => Text("Total :" + controller.total.toString())),
// //             ElevatedButton(
// //                 onPressed: () async {
// //                   // print(controller.quantity);
// //                   if (_key.currentState!.validate()) {
// //                     Map data = {
// //                       'address': address.text,
// //                       'total': controller.total,
// //                       'products': controller.products.map((e) {
// //                         // print(e.quantity);
// //                         return {
// //                           'id': e.id,
// //                           'qty': e.quantity,
// //                           'amount': e.sp,
// //                         };
// //                       }).toList(),
// //                     };

// //                     var response = await Api()
// //                         .loginRegister(data, 'invoice')
// //                         .whenComplete(() {
// //                       // controller.removeProduct();
// //                       Navigator.pushNamed(context, 'dashboard');
// //                     });
// //                     var result = json.decode(response.body);
// //                     // print(response.statuscode);
// //                     print(result);
// //                   }
// //                 },
// //                 child: Text("Confirm"))
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
