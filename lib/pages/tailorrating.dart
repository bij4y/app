// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/controller/ratingcontroller.dart';
// import 'package:flutter_tailor_app/model/rating_model.dart';
// import 'package:flutter_tailor_app/pages/ratingdetails.dart';
// import 'package:flutter_tailor_app/tailorpages/tailorkodetails.dart';
// import 'package:get/get.dart';

// class TailorRating extends StatelessWidget {
//   const TailorRating({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     RatingController ratingcontroller = Get.find();
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: ratingcontroller.tailorlist.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   children: [
//                     // Text(ratingcontroller.tailorlist[index].address)
//                     InkWell(
//                         onTap: () {
//                           Get.to(TailorDetails(
//                               model: ratingcontroller.tailorlist[index]));
//                         },
//                         child: Card(
//                           child: Container(
//                               child: Text(
//                                   ratingcontroller.tailorlist[index].rating)),
//                         ))
//                   ],
//                 );
//               })
//         ],
//       ),
//     ));
//   }
// }
