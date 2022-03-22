// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/api/api.dart';
// import 'package:flutter_tailor_app/controller/tailorcontroller.dart';
// import 'package:flutter_tailor_app/pages/tailordetails.dart';
// import 'package:get/get.dart';

// class SEarchScreen extends StatefulWidget {
//   TailorController controller = Get.find();
//   @override
//   _SEarchScreenState createState() => _SEarchScreenState();
// }

// class _SEarchScreenState extends State<SEarchScreen> {
//   List countries = [];
//   var filteredCountries = [];
//   bool isSearching = false;

//   getCountries() async {
//     var or = await Search().getSearch('categorywith');
//     return or;
//   }

//   @override
//   void initState() {
//     getCountries().then((data) {
//       setState(() {
//         countries = filteredCountries = data;
//       });
//     });
//     super.initState();
//   }

//   void _filterCountries(value) {
//     setState(() {
//       filteredCountries = countries
//           .where((country) =>
//               country['place'].toLowerCase().contains(value.toLowerCase()))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: TextField(
//           onChanged: (value) {
//             _filterCountries(value);
//           },
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//               fillColor: Colors.white,
//               hintText: "Search Location",
//               hintStyle: TextStyle(color: Colors.white)),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: filteredCountries.length > 0
//             ? ListView.builder(
//                 itemCount: filteredCountries.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return filteredCountries[index]['status'] == 0
//                       ? Card(
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 100,
//                                 height: 80,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Image.network(
//                                     "http://192.168.18.8:8000/" +
//                                         filteredCountries[index]['image'],
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     filteredCountries[index]['name'],
//                                     style: TextStyle(
//                                       fontSize: 25,
//                                     ),
//                                   ),
//                                   Text("Sorry Tailor is closed")
//                                 ],
//                               )
//                             ],
//                           ),
//                         )
//                       : GestureDetector(
//                           onTap: () {
//                             Get.to(TailorDetails(
//                                 detail: filteredCountries[index]['id']));
//                           },
//                           child: Card(
//                             child: Row(
//                               children: [
//                                 Container(
//                                   width: 100,
//                                   height: 80,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.network(
//                                       "http://192.168.18.8:8000/" +
//                                           filteredCountries[index]['feature'],
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       filteredCountries[index]['name'],
//                                       style: TextStyle(
//                                         fontSize: 25,
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Icon(Icons.place),
//                                         Text(filteredCountries[index]
//                                             ['address']),
//                                       ],
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                 })
//             : Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.emoji_emotions),
//                     Text("Sorry! We haven't reach there"),
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }
// }
