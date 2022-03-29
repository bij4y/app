// import 'package:badges/badges.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/controller/cartcontroller.dart';
// import 'package:flutter_tailor_app/utility/url.dart';
// import 'package:flutter_tailor_app/views/cart_total.dart';
// import 'package:get/get.dart';
// class CheckoutScreen extends StatelessWidget {
//   const CheckoutScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//       final CartController controller = Get.put(CartController());
//     return Scaffold(
//       bottomNavigationBar: CArtTotal(),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       // bottomNavigationBar: BottomAppBar(
//       //   // color: Colors.green,
//       //   // hasNotch: false,
//       //   child: Row(
//       //     mainAxisSize: MainAxisSize.max,
//       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //     children: <Widget>[
//       //       Container(
//       //         decoration: const BoxDecoration(
//       //           color: Colors.white,
//       //           borderRadius: BorderRadius.only(
//       //             topRight: Radius.circular(40),
//       //             topLeft: Radius.circular(40),
//       //           ),
//       //           boxShadow: [
//       //             BoxShadow(
//       //                 color: Colors.black38, spreadRadius: 0, blurRadius: 5),
//       //           ],
//       //         ),
//       //         width: MediaQuery.of(context).size.width,
//       //         height: 150,
//       //         child: Padding(
//       //           padding: const EdgeInsets.all(20),
//       //           child: Column(
//       //             children: [
//       //               // SizedBox(
//       //               //   height: 20,
//       //               // ),
//       //               Row(
//       //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                 children: [
//       //                   RichText(
//       //                     text: const TextSpan(
//       //                       children: [
//       //                         TextSpan(
//       //                             text: "Selected Items",
//       //                             style: TextStyle(
//       //                                 fontWeight: FontWeight.w700,
//       //                                 color: Colors.black)),
//       //                         TextSpan(
//       //                             text: " (2)",
//       //                             style: TextStyle(
//       //                                 fontWeight: FontWeight.w700,
//       //                                 color: Colors.black)),
//       //                       ],
//       //                     ),
//       //                   ),
//       //                   RichText(
//       //                     text: const TextSpan(
//       //                       children: [
//       //                         TextSpan(
//       //                             text: "Subtotal :",
//       //                             style: TextStyle(
//       //                                 fontWeight: FontWeight.w700,
//       //                                 color: Colors.black)),
//       //                         TextSpan(
//       //                             text: " \$500",
//       //                             style: TextStyle(
//       //                                 fontWeight: FontWeight.w700,
//       //                                 color: Colors.black))
//       //                       ],
//       //                     ),
//       //                   ),
//       //                 ],
//       //               ),
//       //               Padding(
//       //                 padding: const EdgeInsets.all(20.0),
//       //                 child: Row(
//       //                   children: [
//       //                     Expanded(
//       //                         child: ElevatedButton(
//       //                       style: ButtonStyle(
//       //                         backgroundColor: MaterialStateProperty.all(
//       //                             const Color(0xffffbf00)),
//       //                         shape: MaterialStateProperty.all<
//       //                             RoundedRectangleBorder>(
//       //                           RoundedRectangleBorder(
//       //                             borderRadius: BorderRadius.circular(8.0),
//       //                           ),
//       //                         ),
//       //                       ),
//       //                       child: const Padding(
//       //                         padding: EdgeInsets.all(15.0),
//       //                         child: Text(
//       //                           'Proceed to checkout',
//       //                           style: TextStyle(
//       //                               color: Colors.black,
//       //                               fontSize: 17,
//       //                               fontWeight: FontWeight.w400),
//       //                         ),
//       //                       ),
//       //                       onPressed: () {
//       //                         Navigator.pushNamed(context, '/shippingaddress');
//       //                         // ignore: avoid_print
//       //                         print('Pressed');
//       //                       },
//       //                     )),
//       //                   ],
//       //                 ),
//       //               )
//       //             ],
//       //           ),
//       //         ),
//       //       )
//       //     ],
//       //   ),
//       // ),
//       appBar: AppBar(
//         title: const Text(
//           "cart",
//           style: TextStyle(color: Colors.black),
//         ),
//         // backgroundColor: Colors.white10,
//         iconTheme: const IconThemeData(size: 22, color: Colors.black),
//         elevation: 0.5,
//         actions: [
//           const Icon(
//             Icons.search_outlined,
//           ),
//           const SizedBox(width: 10),
//           Badge(
//             badgeColor: const Color(0xffc19a67),
//             badgeContent: const Text(
//               "0",
//               style: TextStyle(color: Colors.white),
//             ),
//             child: const Icon(
//               Icons.favorite_border_outlined,
//             ),
//           ),
//           const SizedBox(width: 10),
//           Badge(
//               badgeColor: const Color(0xffc19a67),
//               badgeContent: const Text(
//                 "0",
//                 style: TextStyle(color: Colors.white),
//               ),
//               child: const Icon(Icons.shopping_cart_outlined)),
//           const SizedBox(
//             width: 20,
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: controller.products.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Column(
//                   children: [
//                     ListTile(
//                       leading: Expanded(
//                         child: Image.network(
//                          ApiUrl().url + ,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       title: const Text("Raymond Cherry"),
//                       subtitle: RichText(
//                         text: const TextSpan(
//                           children: [
//                             TextSpan(
//                                 text: "Pure polyster with black color\n",
//                                 style: TextStyle(color: Colors.black54)),
//                             TextSpan(
//                               text: "In Stock",
//                               style: TextStyle(color: Colors.green),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Card(
//                           child: Row(
//                             children: const [
//                               Card(
//                                 child: Icon(Icons.remove),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 10),
//                                 child: Text("01"),
//                               ),
//                               Card(
//                                 child: Icon(Icons.add),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 80,
//                         ),
//                         const Card(
//                           color: Colors.white70,
//                           child: Padding(
//                             padding: EdgeInsets.all(5.0),
//                             child: Text(
//                               "Delete",
//                               style: TextStyle(
//                                 fontSize: 17,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                       ],
//                     ),
//                     const Divider(),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomFabrics extends StatelessWidget {
//   final String? title;
//   final String? image;
//   const CustomFabrics({
//     this.title,
//     this.image,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, "/productdetails");
//       },
//       child: Row(
//         children: [
//           Container(
//             margin: const EdgeInsets.all(10),
//             width: 80,
//             height: 80,
//             decoration: const BoxDecoration(
//               // shape: BoxShape.circle,
//               image: DecorationImage(
//                   image: NetworkImage(
//                       'https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
//                   fit: BoxFit.cover),
//             ),
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: const [
//               Text(
//                 "Sneakers Shoes",
//                 style: TextStyle(fontWeight: FontWeight.w500),
//               ),
//               Text("company"),
//               Text(
//                 "\$200",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//           const Align(
//             alignment: Alignment.bottomLeft,
//             child: Text(
//               "Drop",
//               style: TextStyle(color: Colors.black54),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/controller/cartcontroller.dart';
import 'package:flutter_tailor_app/model/tailormodel.dart';
import 'package:flutter_tailor_app/services/tailorservices.dart';
import 'package:flutter_tailor_app/utility/url.dart';
import 'package:get/get.dart';

class CardProducts extends StatelessWidget {
  final CartController controller = Get.put(CartController());
  CardProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartController = Get.find<CartController>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("Cart"),
          centerTitle: true,
        ),
        // bottomNavigationBar: CArtTotal(),
        body: Obx(
          () => Container(
            child: cartController.cartItems.value.data.isEmpty
                ? const Center(
                    child: Text("No items in a cart"),
                  )
                : ListView.builder(
                    itemCount: cartController.cartItems.value.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      var mydata = cartController.cartItems.value.data[index];
                      return Column(
                        children: [
                          Card(
                            child: ListTile(
                              title: Text(mydata.productName),
                              subtitle: Text(
                                  "${mydata.qty} x ${mydata.rate} = ${mydata.amount}"),
                              trailing: IconButton(
                                  onPressed: () {
                                    RemoteService.deleteCatItem(mydata.id)
                                        .whenComplete(() {
                                      cartController.getCartData();
                                    });
                                  },
                                  icon: const Icon(Icons.delete)),
                            ),
                          ),
                        ],
                      );

                      // return Text(controller.quantity);
                    }),
          ),
        ),
      ),
    );
  }
}

// class CartProductsCard extends StatelessWidget {
//   final CartController? controller;
//   final Product? product;
//   final int? quantity;
//   final int? index;
//   const CartProductsCard({Key? key, this.controller, this.index, this.product, this.quantity}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: Row(children: [
//       Card(
//         child: Container(
//           margin: const EdgeInsets.all(10),
//           width: 80,
//           height: 80,
//           decoration: BoxDecoration(
//             // shape: BoxShape.circle,
//             image: DecorationImage(image: NetworkImage(ApiUrl().url + product!.image), fit: BoxFit.cover),
//           ),
//         ),
//       ),
//       const SizedBox(
//         width: 10,
//       ),
//       Column(
//         // mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             product!.name,
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//           ),
//           Text(
//             "Rs." + product!.sp.toString(),
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 5),
//         child: Row(
//           children: [
//             Card(
//               child: Row(
//                 children: [
//                   Card(
//                     child: IconButton(
//                         onPressed: () {
//                           controller!.removeProduct(product!);
//                         },
//                         icon: Icon(Icons.remove)),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: Text('$quantity'),
//                   ),
//                   Card(
//                     child: IconButton(
//                         onPressed: () {
//                           controller!.addProduct(product!);
//                         },
//                         icon: Icon(Icons.add)),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ]));
//   }
// }
