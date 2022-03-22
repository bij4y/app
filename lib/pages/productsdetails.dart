// import 'package:flutter/material.dart';

// import 'package:flutter_tailor_app/model/tailormodel.dart';
// import 'package:flutter_tailor_app/p/productprovider.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';

// class ProductDetails extends StatefulWidget {
//   final Product kera;
//   const ProductDetails({required this.kera});

//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   int total = 1;
//   @override
//   Widget build(BuildContext context) {
   
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             AppBar(
//               iconTheme: const IconThemeData(
//                   size: 50,
//                   // color: Color(0xff30404f),
//                   color: Colors.red),
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               child: Image.network(
//                 "http://192.168.18.8:8000/" + widget.kera.image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SingleChildScrollView(
//               padding: const EdgeInsets.only(top: 150),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   children: [
//                     //------------------------profile pic----------------------------//
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           children: [
//                             Text(
//                               widget.kera.name,
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 28),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 6, horizontal: 10),
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.shade400,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Text(
//                                 widget.kera.name,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         IconButton(
//                             color: Colors.white,
//                             onPressed: () {},
//                             icon: Icon(Icons.favorite_border_outlined))
//                       ],
//                     ),
//                     //------------------------ Rating ----------------------------//
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 50),
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 // Row(
//                                 //   children: [
//                                 //     Icon(
//                                 //       Icons.star,
//                                 //       color: Color(0xffffa41c),
//                                 //       size: 25,
//                                 //     ),
//                                 //     Icon(
//                                 //       Icons.star,
//                                 //       color: Color(0xffffa41c),
//                                 //       size: 25,
//                                 //     ),
//                                 //     Icon(
//                                 //       Icons.star,
//                                 //       color: Color(0xffffa41c),
//                                 //       size: 25,
//                                 //     ),
//                                 //     Icon(
//                                 //       Icons.star_border,
//                                 //       size: 25,
//                                 //     ),
//                                 //     Icon(
//                                 //       Icons.star_border,
//                                 //       size: 25,
//                                 //     ),
//                                 //   ],
//                                 // ),
//                                 // Row(
//                                 //   children: [
//                                 //     Icon(
//                                 //       Icons.ac_unit,
//                                 //       color: Colors.black87,
//                                 //       size: 15,
//                                 //     ),
//                                 //     SizedBox(
//                                 //       width: 3,
//                                 //     ),
//                                 //     Text(
//                                 //       "Rate this Tailor",
//                                 //       style: TextStyle(
//                                 //         color: Colors.black54,
//                                 //       ),
//                                 //     ),
//                                 //   ],
//                                 // ),
//                               ],
//                             ),
//                             // Column(
//                             //   children: [
//                             //     Text(
//                             //       "35.4K",
//                             //       style: TextStyle(
//                             //         fontSize: 25,
//                             //       ),
//                             //     ),
//                             //     Text(
//                             //       "Reviews",
//                             //       style: TextStyle(
//                             //         color: Colors.black54,
//                             //       ),
//                             //     ),
//                             //   ],
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     //------------------------ elevated botton ----------------------------//
//                     // Row(
//                     //   children: [
//                     //     Expanded(
//                     //       child: ElevatedButton(
//                     //         style: ElevatedButton.styleFrom(
//                     //           shape: RoundedRectangleBorder(
//                     //             borderRadius: BorderRadius.circular(30.0),
//                     //           ),
//                     //         ),
//                     //         onPressed: () {
//                     //           Navigator.pushNamed(context, "/dashboard");
//                     //         },
//                     //         child: const Text('Order Now'),
//                     //       ),
//                     //     ),
//                     //   ],
//                     // ),
//                     ListTile(
//                       title: Text(
//                         "Description",
//                       ),
//                       subtitle: Text(widget.kera.description),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),

//                     // ListView.builder(
//                     //   shrinkWrap: true,
//                     //   physics: NeverScrollableScrollPhysics(),
//                     //   itemCount: detail.products.length,
//                     //   itemBuilder: (context, index) {
//                     //     return Column(
//                     //       children: [
//                     //         InkWell(
//                     //             onTap: () {
//                     //               // Navigator.push(
//                     //               //     context,
//                     //               //     MaterialPageRoute(
//                     //               //         builder: (context) => ViewPage(
//                     //               //               id: mydata['reply'][index]['id']
//                     //               //                   .toString(),
//                     //               //             )));
//                     //             },
//                     //             child: Card(
//                     //               child: Expanded(
//                     //                   child: Row(children: [
//                     //                 Container(
//                     //                   width: 150,
//                     //                   height: 150,
//                     //                   child: Padding(
//                     //                     padding: const EdgeInsets.all(8.0),
//                     //                     child: Image.network(
//                     //                       "http://192.168.18.8:8000/" +
//                     //                           detail.products[index].image,
//                     //                       fit: BoxFit.cover,
//                     //                     ),
//                     //                   ),
//                     //                 ),
//                     //                 SizedBox(
//                     //                   width: 20,
//                     //                 ),
//                     //                 Column(
//                     //                   children: [
//                     //                     Text(
//                     //                       detail.products[index].name,
//                     //                       style: TextStyle(
//                     //                         fontSize: 25,
//                     //                       ),
//                     //                     ),
//                     //                     Row(
//                     //                       children: [
//                     //                         Text("Rs. "),
//                     //                         Text(detail.products[index].sp
//                     //                             .toString()),
//                     //                       ],
//                     //                     ),
                    
//                  Row(
//                                           children: [
//                                             ElevatedButton(
//                                                 onPressed: () {
//                                                   cartcountroller.addProduct(
//                                                       detail.products[index]);
//                                                 },
//                                                 child: Text("Add To Cart"))
//                                           ],
//                                         )
//                   ],
//                 ),
//                 //               ])),
//                 //             ))
//                 //       ],
//                 //     );
//                 //   },
//                 // ),
//                 // Obx(() {
//                 //   if (tailorcontroller.isLoading.value == true) {
//                 //     return Center(child: CircularProgressIndicator());
//                 //   } else {
//                 //     return ListView.builder(
//                 //         scrollDirection: Axis.horizontal,
//                 //         shrinkWrap: true,
//                 //         physics: NeverScrollableScrollPhysics(),
//                 //         itemCount: tailorcontroller..length,
//                 //         itemBuilder: (BuildContext context, int index) {
//                 //           return Column(
//                 //             children: [
//                 //               Card(
//                 //                 child: Row(
//                 //                   children: [
//                 //                     Container(
//                 //                       width: 100,
//                 //                       height: 80,
//                 //                       child: Padding(
//                 //                         padding: const EdgeInsets.all(8.0),
//                 //                         child: Image.network(
//                 //                           "http://192.168.18.8:8000/" +
//                 //                               tailorcontroller
//                 //                                   .productlist[index].image,
//                 //                           fit: BoxFit.cover,
//                 //                         ),
//                 //                       ),
//                 //                     ),
//                 //                     SizedBox(
//                 //                       width: 20,
//                 //                     ),
//                 //                     Column(
//                 //                       children: [
//                 //                         Text(
//                 //                           tailorcontroller
//                 //                               .productlist[index].price,
//                 //                           style: TextStyle(
//                 //                             fontSize: 25,
//                 //                           ),
//                 //                         ),
//                 //                         Row(
//                 //                           children: [
//                 //                             Icon(Icons.place),
//                 //                             Text(tailorcontroller
//                 //                                 .productlist[index]
//                 //                                 .description),
//                 //                           ],
//                 //                         ),
//                 //                       ],
//                 //                     )
//                 //                   ],
//                 //                 ),
//                 //               )
//                 //             ],
//                 //           );
//                 //         });
//                 //   }
//                 // }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
