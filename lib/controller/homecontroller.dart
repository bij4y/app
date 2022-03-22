// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   var allPlayers = [
//     {"name": "Rohit Sharma", "country": "India"},
//     {"name": "Virat Kohli ", "country": "India"},
//     {"name": "Glenn Maxwell", "country": "Australia"},
//     {"name": "Aaron Finch", "country": "Australia"},
//     {"name": "Martin Guptill", "country": "New Zealand"},
//     {"name": "Trent Boult", "country": "New Zealand"},
//     {"name": "David Miller", "country": "South Africa"},
//     {"name": "Kagiso Rabada", "country": "South Africa"},
//     {"name": "Chris Gayle", "country": "West Indies"},
//     {"name": "Jason Holder", "country": "West Indies"},
//   ];
//   var foundPlayers;

//   @override
//   void onInit() {
//     super.onInit();
//     foundPlayers.value = allPlayers;
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {}
//   void filterPlayer(String playerName) {
//     var results = [];
//     if (playerName.isEmpty) {
//       results = allPlayers;
//     } else {
//       results = allPlayers
//           .where((element) => element["name"]
//               .toString()
//               .toLowerCase()
//               .contains(playerName.toLowerCase()))
//           .toList();
//     }
//     foundPlayers.value = results;
//   }
// }
