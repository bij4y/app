// import 'package:flutter/material.dart';

// class AddCartDetails extends StatefulWidget {
//   const AddCartDetails({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<AddCartDetails> createState() => _AddCartDetailsState();
// }

// class _AddCartDetailsState extends State<AddCartDetails> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(23.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               // ElevatedButton(
//               //     onPressed: () {
//               //       count--;
//               //       print(count);
//               //     },
//               //     child: Text("decrease")),
//               SizedBox(
//                 width: 40,
//                 height: 32,
//                 child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                     backgroundColor: Colors.green,
//                     elevation: 20,
//                     minimumSize: Size(
//                       100,
//                       50,
//                     ),
//                     shadowColor: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   onPressed: () {
//                     count--;
//                     if (count < 0) {}
//                     setState(() {});
//                     print(count);
//                   },
//                   child: Icon(
//                     Icons.remove,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: count == 0
//                     ? SizedBox()
//                     : Text(
//                         "$count",
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline6!
//                             .copyWith(color: Colors.black),
//                       ),
//               ),
//               // ElevatedButton(
//               //     onPressed: () {
//               //       count++;
//               //       print(count);
//               //     },
//               //     child: Text("increase")),
//               SizedBox(
//                 width: 40,
//                 height: 32,
//                 child: OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                     backgroundColor: Colors.green,
//                     elevation: 20,
//                     minimumSize: Size(
//                       100,
//                       50,
//                     ),
//                     shadowColor: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   onPressed: () {
//                     count++;
//                     setState(() {});
//                     print(count);
//                   },
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             height: 32,
//             width: 32,
//             decoration:
//                 BoxDecoration(color: Colors.red, shape: BoxShape.circle),
//             child: Icon(
//               Icons.favorite,
//               color: Colors.white,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
