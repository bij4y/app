// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/controller/homecontroller.dart';
// import 'package:flutter_tailor_app/controller/searchcontroller.dart';
// import 'package:flutter_tailor_app/controller/tailorcontroller.dart';
// import 'package:flutter_tailor_app/pages/tailordetails.dart';
// import 'package:flutter_tailor_app/tailorpages/tailorkodetails.dart';
// import 'package:flutter_tailor_app/utility/url.dart';

// import 'package:get/get.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var controller = Get.put(SearchController());
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('ListView Filter'),
//       //   centerTitle: true,
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               onChanged: (value) => controller.filterPlayer(value),
//               decoration: const InputDecoration(
//                 labelText: 'Search Location',
//                 suffixIcon: Icon(Icons.search),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Obx(
//                 () => ListView.builder(
//                     itemCount: controller.foundPlayers.value.data.length,
//                     itemBuilder: (context, index) {
//                       print(controller.foundPlayers.value.data[index].name);
//                       return InkWell(
//                         onTap: () {
//                           controller.fetchData(controller
//                                     .foundPlayers.value.data[index].id);
//                                 Get.to(() => const TailorDetails());
//                         },
//                         child: ListTile(
//                           leading: Image.network(ApiUrl().url +
//                               controller.foundPlayers.value.data[index].feature),
//                           title: Text(
//                             controller.foundPlayers.value.data[index].name,
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Row(
//                             children: [
//                               Icon(Icons.place),
//                               Text(
//                                   controller.foundPlayers.value.data[index].address),
//                             ],
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
