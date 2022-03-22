// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/p/productprovider.dart';
// import 'package:provider/provider.dart';

// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     ProductProvider product = Provider.of(context);
//     return SafeArea(
//       child: Scaffold(
//         bottomNavigationBar: Container(
//           color: Colors.grey.shade300,
//           padding: EdgeInsets.all(10),
//           width: MediaQuery.of(context).size.width,
//           height: 50,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                   child: Text("Items(" + product.totalItems.toString() + ")")),
//               Container(child: Text("Total :" + product.totalAmount.toString()))
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           title: Text(
//             "Cart",
//             textAlign: TextAlign.center,
//           ),
//         ),
//         body: product.totalItems == 0
//             ? Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(
//                       Icons.shopping_basket,
//                       size: 100,
//                     ),
//                     Text(
//                       "No Items In Basket\n Please buy Something!!!",
//                       textScaleFactor: 1.2,
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               )
//             : SingleChildScrollView(
//                 child: Column(
//                   children: <Widget>[
//                     ListView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: product.totalItems,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             child: Container(
//                               height: 100,
//                               padding: EdgeInsets.all(10),
//                               child: Row(
//                                 children: <Widget>[
//                                   Expanded(
//                                     flex: 1,
//                                     child: Container(
//                                       child: Image.network(
//                                         product.products[index].image,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Expanded(
//                                       flex: 2,
//                                       child: Container(
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: <Widget>[
//                                             Text(
//                                               product.products[index].name,
//                                               style: TextStyle(fontSize: 20),
//                                             ),
//                                             Text(product.products[index].qty
//                                                     .toString() +
//                                                 "X" +
//                                                 product.products[index].sp
//                                                     .toString() +
//                                                 "=" +
//                                                 product.products[index].amount
//                                                     .toString()),
//                                           ],
//                                         ),
//                                       )),
//                                   Container(
//                                     child: IconButton(
//                                       color: Colors.red,
//                                       iconSize: 50,
//                                       icon: Icon(Icons.delete),
//                                       onPressed: () {
//                                         product.removeProduct(
//                                             product.products[index].id);
//                                       },
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         }),
//                     ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushNamed(context, 'checkout');
//                         },
//                         child: Text("Checkout")),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Icon(Icons.insert_emoticon),
//                     Text(
//                       "Thank you and Visit Again",
//                       textScaleFactor: 1.2,
//                     )
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }
// }



// // import 'package:badges/badges.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_tailor_app/p/productprovider.dart';
// // import 'package:provider/provider.dart';

// // class CheckoutScreen extends StatelessWidget {
// //   const CheckoutScreen({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     ProductProvider product = Provider.of(context);

// //     return Scaffold(
// //       // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// //       bottomNavigationBar: BottomAppBar(
// //         // color: Colors.green,
// //         // hasNotch: false,
// //         child: Row(
// //           mainAxisSize: MainAxisSize.max,
// //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //           children: <Widget>[
// //             Container(
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.only(
// //                   topRight: Radius.circular(40),
// //                   topLeft: Radius.circular(40),
// //                 ),
// //                 boxShadow: [
// //                   BoxShadow(
// //                       color: Colors.black38, spreadRadius: 0, blurRadius: 5),
// //                 ],
// //               ),
// //               width: MediaQuery.of(context).size.width,
// //               height: 150,
// //               child: Padding(
// //                 padding: const EdgeInsets.all(20),
// //                 child: Column(
// //                   children: [
// //                     // SizedBox(
// //                     //   height: 20,
// //                     // ),
// //                     Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Text("Items(" + product.totalItems.toString() + ")"),
// //                         Text("Total :" + product.totalAmount.toString())
// //                         // RichText(
// //                         //   text: const TextSpan(
// //                         //     children: [
// //                         //       TextSpan(
// //                         //           text: "",
// //                         //           style: TextStyle(
// //                         //               fontWeight: FontWeight.w700,
// //                         //               color: Colors.black)),
// //                         //       TextSpan(
// //                         //           text: " (2)",
// //                         //           style: TextStyle(
// //                         //               fontWeight: FontWeight.w700,
// //                         //               color: Colors.black)),
// //                         //     ],
// //                         //   ),
// //                         // ),
// //                         // RichText(
// //                         //   text: const TextSpan(
// //                         //     children: [
// //                         //       TextSpan(
// //                         //           text: "Subtotal :",
// //                         //           style: TextStyle(
// //                         //               fontWeight: FontWeight.w700,
// //                         //               color: Colors.black)),
// //                         //       TextSpan(
// //                         //           text: " \$500",
// //                         //           style: TextStyle(
// //                         //               fontWeight: FontWeight.w700,
// //                         //               color: Colors.black))
// //                         //     ],
// //                         //   ),
// //                         // ),
// //                       ],
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: Row(
// //                         children: [
// //                           Expanded(
// //                               child: ElevatedButton(
// //                             style: ButtonStyle(
// //                               backgroundColor: MaterialStateProperty.all(
// //                                   const Color(0xffffbf00)),
// //                               shape: MaterialStateProperty.all<
// //                                   RoundedRectangleBorder>(
// //                                 RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(8.0),
// //                                 ),
// //                               ),
// //                             ),
// //                             child: const Padding(
// //                               padding: EdgeInsets.all(15.0),
// //                               child: Text(
// //                                 'Proceed to checkout',
// //                                 style: TextStyle(
// //                                     color: Colors.black,
// //                                     fontSize: 17,
// //                                     fontWeight: FontWeight.w400),
// //                               ),
// //                             ),
// //                             onPressed: () {
// //                               Navigator.pushNamed(context, '/shippingaddress');
// //                               print('Pressed');
// //                             },
// //                           )),
// //                         ],
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //       appBar: AppBar(
// //         title: const Text(
// //           "cart",
// //           style: TextStyle(color: Colors.black),
// //         ),
// //         // backgroundColor: Colors.white10,
// //         iconTheme: const IconThemeData(size: 22, color: Colors.black),
// //         elevation: 0.5,
// //         actions: [
// //           const Icon(
// //             Icons.search_outlined,
// //           ),
// //           const SizedBox(width: 10),
// //           Badge(
// //             badgeColor: const Color(0xffc19a67),
// //             badgeContent: const Text(
// //               "0",
// //               style: TextStyle(color: Colors.white),
// //             ),
// //             child: const Icon(
// //               Icons.favorite_border_outlined,
// //             ),
// //           ),
// //           const SizedBox(width: 10),
// //           Badge(
// //               badgeColor: const Color(0xffc19a67),
// //               badgeContent: const Text(
// //                 "0",
// //                 style: TextStyle(color: Colors.white),
// //               ),
// //               child: const Icon(Icons.shopping_cart_outlined)),
// //           const SizedBox(
// //             width: 20,
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemBuilder: (BuildContext context, int index) {
// //                 return Container(
// //                   // color: Colors.amber,
// //                   child: Column(
// //                     children: [
// //                       ListTile(
// //                         leading: Expanded(
// //                           child: Image.network(
// //                             "https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                         title: const Text("Raymond Cherry"),
// //                         subtitle: RichText(
// //                           text: const TextSpan(
// //                             children: [
// //                               TextSpan(
// //                                   text: "Pure polyster with black color\n",
// //                                   style: TextStyle(color: Colors.black54)),
// //                               TextSpan(
// //                                 text: "In Stock",
// //                                 style: TextStyle(color: Colors.green),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.end,
//                       //   children: [
//                       //     Card(
//                       //       child: Row(
//                       //         children: [
//                       //           Card(
//                       //             child: Icon(Icons.remove),
//                       //           ),
//                       //           Padding(
//                       //             padding: EdgeInsets.symmetric(horizontal: 10),
//                       //             child: Text("01"),
//                       //           ),
//                       //           Card(
//                       //             child: Icon(Icons.add),
//                       //           ),
//                       //         ],
//                       //       ),
//                       //     ),
// //                           SizedBox(
// //                             width: 80,
// //                           ),
// //                           Card(
// //                             color: Colors.white70,
// //                             child: Padding(
// //                               padding: EdgeInsets.all(5.0),
// //                               child: Text(
// //                                 "Delete",
// //                                 style: TextStyle(
// //                                   fontSize: 17,
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                           SizedBox(
// //                             width: 20,
// //                           ),
// //                         ],
// //                       ),
// //                       Divider(),
// //                     ],
// //                   ),
// //                 );
// //               },
// //               itemCount: 10,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class CustomFabrics extends StatelessWidget {
// //   final String? title;
// //   final String? image;
// //   const CustomFabrics({
// //     this.title,
// //     this.image,
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return InkWell(
// //       onTap: () {
// //         Navigator.pushNamed(context, "/productdetails");
// //       },
// //       child: Row(
// //         children: [
// //           Container(
// //             margin: const EdgeInsets.all(10),
// //             width: 80,
// //             height: 80,
// //             decoration: const BoxDecoration(
// //               // shape: BoxShape.circle,
// //               image: DecorationImage(
// //                   image: NetworkImage(
// //                       'https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
// //                   fit: BoxFit.cover),
// //             ),
// //           ),
// //           const SizedBox(
// //             width: 10,
// //           ),
// //           Column(
// //             // mainAxisAlignment: MainAxisAlignment.start,
// //             children: const [
// //               Text(
// //                 "Sneakers Shoes",
// //                 style: TextStyle(fontWeight: FontWeight.w500),
// //               ),
// //               Text("company"),
// //               Text(
// //                 "\$200",
// //                 style: TextStyle(fontSize: 20),
// //               ),
// //             ],
// //           ),
// //           const Align(
// //             alignment: Alignment.bottomLeft,
// //             child: Text(
// //               "Drop",
// //               style: TextStyle(color: Colors.black54),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
