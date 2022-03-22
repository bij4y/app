// import 'package:flutter/material.dart';

// import 'package:flutter_tailor_app/utility/form.dart';
// import 'package:searchbar_animation/searchbar_animation.dart';

// class DashboradScreen extends StatelessWidget {
//   const DashboradScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const CustomDrawer(),
//       //--------------------appbar---------------------//
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.person_outline_sharp,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.notifications_none_outlined,
//             ),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.shopping_cart_outlined,
//             ),
//             onPressed: () {
//               Navigator.pushNamed(context, "/checkoutpage");
//             },
//           ),
//           const SizedBox(width: 5),
//         ],
//         title: const Text(
//           "Tailor",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       //--------------------appbar Ends---------------------//

//       //--------------------body Ends---------------------//
//       body: SingleChildScrollView(
//         child: Container(
//           color: const Color(0xffD5DADA),
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           Color.fromRGBO(0, 169, 191, 1),
//                           Colors.greenAccent,
//                         ],
//                       ),
//                     ),
//                     child: Column(
//                       children: [
//                         const ListTile(
//                           horizontalTitleGap: -8,
//                           leading: Icon(
//                             Icons.place_outlined,
//                             size: 30,
//                             color: Colors.white,
//                           ),
//                           title: Text(
//                             'Deliver to ithari ',
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                           subtitle: Text("Nepal",
//                               style: TextStyle(color: Colors.black)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: SearchBarAnimation(
//                             textEditingController: TextEditingController(),
//                             isOriginalAnimation: true,
//                             enableKeyboardFocus: true,
//                             isSearchBoxOnRightSide: true,
//                             onExpansionComplete: () {
//                               debugPrint(
//                                   'do something just after searchbox is opened.');
//                             },
//                             onCollapseComplete: () {
//                               debugPrint(
//                                   'do something just after searchbox is closed.');
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 color: Colors.white,
//                 height: 5,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Container(
//                     height: 170,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10.0),
//                       child: Image.network(
//                         "https://widethread.com/wp-content/uploads/2019/08/FB-Cover-min-1024x334.jpg",
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: const Color(0xff30404f),
//                     ),
//                     width: MediaQuery.of(context).size.width,
//                   ),
//                 ),
//               ),
//               const CustomTailorsNearYou(),
//               const SizedBox(
//                 height: 5,
//               ),
//               const CustomListview(),
//               const SizedBox(
//                 height: 5,
//               ),
//               const CustomShoes(),
//               const SizedBox(
//                 height: 5,
//               ),
//               const CustomRequestStitch(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomShoes extends StatelessWidget {
//   const CustomShoes({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Shoes",
//                 textScaleFactor: 1.3,
//                 style:
//                     TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
//               ),
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 150,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: const [
//                 CustomFabrics(
//                   title: "Sport",
//                   image:
//                       "https://media.istockphoto.com/photos/white-sneaker-on-a-blue-gradient-background-mens-fashion-sport-shoe-picture-id1303978937?b=1&k=20&m=1303978937&s=170667a&w=0&h=az5Y96agxAdHt3XAv7PP9pThdiDpcQ3otWWn9YuJQRc=",
//                 ),
//                 CustomFabrics(
//                   title: "Sneakers",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPugFPbSHtLVsqLVYJElca6wokn_LS8kYAFw&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Boot",
//                   image:
//                       "https://5.imimg.com/data5/NH/SK/AD/ANDROID-31943666/product-jpeg-500x500.jpg",
//                 ),
//                 CustomFabrics(
//                   title: "Fabindia",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBrHi1vkQar1BTKhJfUAHAQMGUeph9STKGw&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Bombay Rayon",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-GL2oqtlkDG0qhYKaXwH04hWnr5Pgi5A-g&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Ormezzano",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzZxg0jPnvKadplEuJPYmgUCbOLL5BwV9b5g&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Siyarams",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Bw__QshQySyQIaOTDlstbpW3jnWVWSBXCg&usqp=CAU",
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: InkWell(
//                 onTap: () {},
//                 child: const Text(
//                   "Shop now",
//                   style: TextStyle(color: Colors.green),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomTailorsNearYou extends StatelessWidget {
//   const CustomTailorsNearYou({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         children: [
//           const Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Tailors Near You",
//                 textScaleFactor: 1.3,
//                 style:
//                     TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
//               ),
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 150,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: const [
//                 CustomTailorsCarasoul(
//                   title: "Hina Tailors",
//                   image:
//                       "https://images-platform.99static.com//G69NXaRSpbxd0KPcCuzP6E1LwfQ=/97x1099:888x1890/fit-in/500x500/99designs-contests-attachments/96/96159/attachment_96159565",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "Australian Showroom",
//                   image:
//                       "https://images-platform.99static.com//xqp2hKRSdIKPikEr6xnheogOMlc=/503x218:1025x741/fit-in/500x500/99designs-contests-attachments/56/56546/attachment_56546826",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "Style Tailors",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPGCpXJ8nqim3on2g86NZ7hwdOULs-L5aTKA&usqp=CAU",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "Smart Tailors",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTXob33sb_gw8kBilOr3gX62dh4w3U1Rj5hw&usqp=CAU",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "Fashion Tailors",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzNvH8tcStXE2epZqTrzIcWFIKJDZhHlc7Rw&usqp=CAU",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "UK tailors",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1d_EManKUSu4O5FWSyXGwUWh9kKEW_zt85w&usqp=CAU",
//                 ),
//                 CustomTailorsCarasoul(
//                   title: "Standard Tailors",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaoZeYl2gEI-uUb-Xer97kmMU4BlAczH6MGA&usqp=CAU",
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: InkWell(
//                 onTap: () {},
//                 child: const Text(
//                   "Request stitch",
//                   style: TextStyle(color: Colors.green),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomListview extends StatelessWidget {
//   const CustomListview({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Fabrics",
//                 textScaleFactor: 1.3,
//                 style:
//                     TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
//               ),
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: 150,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: const [
//                 CustomFabrics(
//                   title: "Raymond",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOYXtGacH4lWrNV8B8wruoGQE_kkSU5QrF2Q&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                     title: "Loro Piana",
//                     image:
//                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3QOzdwc6NH96AoEnjIpozN_Q3pcyRHF5FA&usqp=CAU"),
//                 CustomFabrics(
//                   title: "Vardhman",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0QnGQ4f9OnPHchsIj8_JQ51zH_y9AcYTjdg&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Fabindia",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBrHi1vkQar1BTKhJfUAHAQMGUeph9STKGw&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Bombay Rayon",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-GL2oqtlkDG0qhYKaXwH04hWnr5Pgi5A-g&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Ormezzano",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzZxg0jPnvKadplEuJPYmgUCbOLL5BwV9b5g&usqp=CAU",
//                 ),
//                 CustomFabrics(
//                   title: "Siyarams",
//                   image:
//                       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Bw__QshQySyQIaOTDlstbpW3jnWVWSBXCg&usqp=CAU",
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: InkWell(
//                 onTap: () {},
//                 child: const Text(
//                   "Shop now",
//                   style: TextStyle(color: Colors.green),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomRequestStitch extends StatelessWidget {
//   const CustomRequestStitch({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       color: Colors.white,
//       child: Column(
//         children: [
//           const Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Request an order for Stitch now",
//                 textScaleFactor: 1.3,
//               ),
//             ),
//           ),
//           const CustomRequestForm(
//             title: "Select Tailor",
//           ),
//           const CustomRequestForm(
//             title: "Select stitch product",
//           ),
//           const CustomRequestForm(
//             title: "Your sample product/design no.",
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, "/dashboard");
//                     },
//                     // style: ButtonStyle(
//                     //   backgroundColor:
//                     //       MaterialStateProperty.all(Color(0xFF073B4C)),
//                     //   // 0xff1A2D50
//                     // ),
//                     child: const Text('Request now'),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class CustomRequestForm extends StatelessWidget {
//   final String? title;
//   const CustomRequestForm({
//     this.title,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.grey[300]?.withOpacity(0.5),
//         ),
//         child: TextFormField(
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//             border: InputBorder.none,
//             hintText: "$title",
//           ),
//           validator: (String? value) {
//             return (value != null && value.contains('@'))
//                 ? 'Do not use the @ char.'
//                 : null;
//           },
//         ),
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
//       child: Card(
//         color: const Color(0xffF8F8F8),
//         child: Container(
//           height: 210,
//           width: 120,
//           child: Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       image: NetworkImage('$image'), fit: BoxFit.fill),
//                 ),
//               ),
//               Text("$title"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           const UserAccountsDrawerHeader(
//             accountEmail: Text('KamranSheikh786@gmail.com'),
//             accountName: Text('Sheikh Kamran'),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage("images/profile.jpeg"),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.pushNamed(context, "/partner");
//             },
//             child: const ListTile(
//               title: Text('Sign in'),
//             ),
//           ),
//           const ListTile(
//             title: Text('Shop by department'),
//           ),
//           const ListTile(
//             title: Text('My Measurement'),
//           ),
//           ListTile(
//             title: const Text('Add Tailor'),
//             onTap: () {
//               Navigator.pushNamed(context, '/add_tailor');
//             },
//           ),
//           ListTile(
//             title: const Text('About'),
//             onTap: () {},
//           ),
//           ListTile(
//             title: const Text('Privacy'),
//             onTap: () {
//               Navigator.pushNamed(context, '/privacy');
//             },
//           ),
//           const ListTile(
//             title: Text('Terms of Conditions'),
//           ),
//           const ListTile(
//             title: Text('Account information'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomTailorsCarasoul extends StatelessWidget {
//   final String? title;
//   final String? image;
//   final IconData? icon;
//   const CustomTailorsCarasoul({
//     this.title,
//     this.icon,
//     this.image,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, '/tailordetails');
//       },
//       child: Card(
//         child: Container(
//           color: const Color(0xffF8F8F8),
//           height: 150,
//           width: 110,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Image.network(
//                   "$image",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(
//                 height: 7,
//               ),
//               Text("$title"),
//               const SizedBox(
//                 height: 7,
//               ),
//               Row(
//                 children: const [
//                   Icon(
//                     Icons.star,
//                     color: Color(0xffffa41c),
//                     size: 15,
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Color(0xffffa41c),
//                     size: 15,
//                   ),
//                   Icon(
//                     Icons.star_border,
//                     size: 15,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomHomeSearch extends StatelessWidget {
//   const CustomHomeSearch({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: TextForm.horizontalScreenPadding,
//           vertical: TextForm.verticalscreenPadding),
//       child: InkWell(
//         onTap: () {
//           Navigator.pushNamed(context, "/checkoutpage");
//         },
//         child: TextFormField(
//           decoration: const InputDecoration(
//             hintText: "Search Tailor...",
//             prefixIcon: Icon(
//               Icons.search,
//               // color: const Color(0xff1a2d40),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/controller/cartcontroller.dart';
import 'package:flutter_tailor_app/controller/tailorcontroller.dart';
import 'package:flutter_tailor_app/controller/usercontroller.dart';
import 'package:flutter_tailor_app/p/productprovider.dart';
import 'package:flutter_tailor_app/pages/tailordetails.dart';
import 'package:flutter_tailor_app/tailorpages/tailorkodetails.dart';
import 'package:flutter_tailor_app/utility/form.dart';
import 'package:flutter_tailor_app/utility/url.dart';
import 'package:flutter_tailor_app/views/drawer.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class DashboradScreen extends StatelessWidget {
  const DashboradScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartController cartcountroller = Get.find();
    var usercontroller = Get.put(UserController());
    return Scaffold(
      drawer: DrawerScreen(),
      //--------------------appbar---------------------//
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 1,
        actions: [
          Obx(
            () => Row(
              children: <Widget>[
                IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'search');
                    }),
                cartcountroller.items == 0
                    ? const SizedBox()
                    : Text(
                        cartcountroller.items.toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'cart',
                      );
                    })
              ],
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "Tailor",
          style: TextStyle(color: Colors.black),
        ),
      ),
      //--------------------appbar Ends---------------------//

      //--------------------body Ends---------------------//
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffD5DADA),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 169, 191, 1),
                          Colors.greenAccent,
                        ],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          horizontalTitleGap: -8,
                          leading: Icon(
                            Icons.place_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                          title: const Text(
                            'Deliver to ithari ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          subtitle: const Text("Nepal",
                              style: TextStyle(color: Colors.black)),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(15.0),
                        //   child: SearchBarAnimation(
                        //     textEditingController: TextEditingController(),
                        //     isOriginalAnimation: true,
                        //     enableKeyboardFocus: true,
                        //     isSearchBoxOnRightSide: true,
                        //     onExpansionComplete: () {
                        //       debugPrint(
                        //           'do something just after searchbox is opened.');
                        //     },
                        //     onCollapseComplete: () {
                        //       debugPrint(
                        //           'do something just after searchbox is closed.');
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        "https://widethread.com/wp-content/uploads/2019/08/FB-Cover-min-1024x334.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff30404f),
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              const CustomTailorsNearYou(),
              const SizedBox(
                height: 5,
              ),
              const CustomListview(),
              const SizedBox(
                height: 5,
              ),
              const CustomShoes(),
              const SizedBox(
                height: 5,
              ),
              const CustomRequestStitch(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomShoes extends StatelessWidget {
  const CustomShoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Shoes",
                textScaleFactor: 1.3,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomFabrics(
                  title: "Sport",
                  image:
                      "https://media.istockphoto.com/photos/white-sneaker-on-a-blue-gradient-background-mens-fashion-sport-shoe-picture-id1303978937?b=1&k=20&m=1303978937&s=170667a&w=0&h=az5Y96agxAdHt3XAv7PP9pThdiDpcQ3otWWn9YuJQRc=",
                ),
                CustomFabrics(
                  title: "Sneakers",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPugFPbSHtLVsqLVYJElca6wokn_LS8kYAFw&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Boot",
                  image:
                      "https://5.imimg.com/data5/NH/SK/AD/ANDROID-31943666/product-jpeg-500x500.jpg",
                ),
                CustomFabrics(
                  title: "Fabindia",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBrHi1vkQar1BTKhJfUAHAQMGUeph9STKGw&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Bombay Rayon",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-GL2oqtlkDG0qhYKaXwH04hWnr5Pgi5A-g&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Ormezzano",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzZxg0jPnvKadplEuJPYmgUCbOLL5BwV9b5g&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Siyarams",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Bw__QshQySyQIaOTDlstbpW3jnWVWSBXCg&usqp=CAU",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Shop now",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTailorsNearYou extends StatelessWidget {
  const CustomTailorsNearYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tailorcontroller = Get.put(TailorController());
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Tailors Near You",
                textScaleFactor: 1.3,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Obx(() {
              if (tailorcontroller.isLoading.value == true) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tailorcontroller.tailorlist.value.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                tailorcontroller.fetchProduct(tailorcontroller
                                    .tailorlist.value.data[index].id);
                                Get.to(() => const TailorDetails());
                              },
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 110,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          tailorcontroller.tailorlist.value
                                              .data[index].feature,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          tailorcontroller.tailorlist.value
                                              .data[index].name,
                                          style: const TextStyle(
                                            fontSize: 25,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.place),
                                            Text(
                                              tailorcontroller.tailorlist.value
                                                  .data[index].address,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ))
                        ],
                      );
                    });
              }
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Request stitch",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomListview extends StatelessWidget {
  const CustomListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Fabrics",
                textScaleFactor: 1.3,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomFabrics(
                  title: "Raymond",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOYXtGacH4lWrNV8B8wruoGQE_kkSU5QrF2Q&usqp=CAU",
                ),
                CustomFabrics(
                    title: "Loro Piana",
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3QOzdwc6NH96AoEnjIpozN_Q3pcyRHF5FA&usqp=CAU"),
                CustomFabrics(
                  title: "Vardhman",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0QnGQ4f9OnPHchsIj8_JQ51zH_y9AcYTjdg&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Fabindia",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnBrHi1vkQar1BTKhJfUAHAQMGUeph9STKGw&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Bombay Rayon",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-GL2oqtlkDG0qhYKaXwH04hWnr5Pgi5A-g&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Ormezzano",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzZxg0jPnvKadplEuJPYmgUCbOLL5BwV9b5g&usqp=CAU",
                ),
                CustomFabrics(
                  title: "Siyarams",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Bw__QshQySyQIaOTDlstbpW3jnWVWSBXCg&usqp=CAU",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Shop now",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRequestStitch extends StatelessWidget {
  const CustomRequestStitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Align(
              alignment: Alignment.topLeft,
              child: const Text(
                "Request an order for Stitch now",
                textScaleFactor: 1.3,
              ),
            ),
          ),
          const CustomRequestForm(
            title: "Select Tailor",
          ),
          const CustomRequestForm(
            title: "Select stitch product",
          ),
          const CustomRequestForm(
            title: "Your sample product/design no.",
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/dashboard");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF073B4C)),
                      // 0xff1A2D50
                    ),
                    child: const Text('Request now'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomRequestForm extends StatelessWidget {
  final String? title;
  const CustomRequestForm({
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]?.withOpacity(0.5),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: InputBorder.none,
            hintText: "$title",
          ),
          validator: (String? value) {
            return (value != null && value.contains('@'))
                ? 'Do not use the @ char.'
                : null;
          },
        ),
      ),
    );
  }
}

class CustomFabrics extends StatelessWidget {
  final String? title;
  final String? image;
  const CustomFabrics({
    this.title,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/productdetails");
      },
      child: Card(
        color: const Color(0xffF8F8F8),
        child: Container(
          height: 210,
          width: 120,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage('$image'), fit: BoxFit.fill),
                ),
              ),
              Text("$title"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountEmail: Text('KamranSheikh786@gmail.com'),
            accountName: Text('Sheikh Kamran'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/profile.jpeg"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/partner");
            },
            child: const ListTile(
              title: Text('Sign in'),
            ),
          ),
          const ListTile(
            title: Text('Shop by department'),
          ),
          const ListTile(
            title: Text('My Measurement'),
          ),
          ListTile(
            title: const Text('Add Tailor'),
            onTap: () {
              Navigator.pushNamed(context, '/add_tailor');
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy');
            },
          ),
          const ListTile(
            title: Text('Terms of Conditions'),
          ),
          const ListTile(
            title: Text('Account information'),
          ),
        ],
      ),
    );
  }
}

class CustomTailorsCarasoul extends StatelessWidget {
  final String? title;
  final String? image;
  final IconData? icon;
  const CustomTailorsCarasoul({
    this.title,
    this.icon,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/tailordetails');
      },
      child: Card(
        child: Container(
          color: const Color(0xffF8F8F8),
          height: 150,
          width: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.network(
                  "$image",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text("$title"),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffffa41c),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffffa41c),
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHomeSearch extends StatelessWidget {
  const CustomHomeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: TextForm.horizontalScreenPadding,
          vertical: TextForm.verticalscreenPadding),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: "Search Tailor...",
          prefixIcon: Icon(
            Icons.search,
            // color: const Color(0xff1a2d40),
          ),
        ),
      ),
    );
  }
}
