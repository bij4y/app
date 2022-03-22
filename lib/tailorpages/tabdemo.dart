// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/tailorpages/tailorkodetails.dart';

// class Tabbardemo extends StatelessWidget {
//   List<String> posts = [
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     "https://images.pexels.com/photos/3984870/pexels-photo-3984870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//   ];
//   // const Tabbardemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 3,
//         child: NestedScrollView(
//           headerSliverBuilder: (context, isSelected) {
//             return [
//               const SliverAppBar(
//                 collapsedHeight: 600,
//                 expandedHeight: 600,
//                 flexibleSpace: TailorDetails(),
//               ),
//               SliverPersistentHeader(
//                 floating: true,
//                 pinned: true,
//                 delegate: MyDelegate(
//                   const TabBar(
//                     indicatorColor: Colors.blue,
//                     unselectedLabelColor: Colors.grey,
//                     labelColor: Colors.black,
//                     tabs: [
//                       Tab(
//                         text: "Shirt",
//                       ),
//                       Tab(
//                         text: "Trousers",
//                       ),
//                       Tab(
//                         text: "Blazers",
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: TabBarView(
//             children: [1, 2, 3]
//                 .map(
//                   (tab) => GridView.count(
//                     // physics: BouncingScrollPhysics(),
//                     physics: const NeverScrollableScrollPhysics(),
//                     crossAxisCount: 3,
//                     shrinkWrap: true,
//                     mainAxisSpacing: 2,
//                     crossAxisSpacing: 2,
//                     children: posts
//                         .map((e) => InkWell(
//                               onTap: () {
//                                 Navigator.pushNamed(context, "/try");
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: NetworkImage(e),
//                                         fit: BoxFit.fill)),
//                               ),
//                             ))
//                         .toList(),
//                   ),
//                 )
//                 .toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyDelegate extends SliverPersistentHeaderDelegate {
//   MyDelegate(this.tabBar);
//   final TabBar tabBar;
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       color: Colors.white,
//       child: tabBar,
//     );
//   }

//   @override
//   double get maxExtent => tabBar.preferredSize.height;

//   @override
//   double get minExtent => tabBar.preferredSize.height;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }

// class ProfileTab extends StatelessWidget {
//   const ProfileTab({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Container(
//                 height: 80,
//                 width: 80,
//                 decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                         image: NetworkImage(
//                             "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
