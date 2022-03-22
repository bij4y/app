// import 'package:flutter_tailor_app/model/rating_model.dart';
// import 'package:flutter_tailor_app/model/tailormodel.dart';
// import 'package:flutter_tailor_app/services/tailorservices.dart';
// import 'package:get/get.dart';

// class RatingController extends GetxController {
//   // var advice = {}.obs;
//   var tailorlist = <RatingModel>[].obs;
//   // var productlist = <Product>[].obs;

//   var isLoading = true.obs;

//   Future fetchData() async {
//     try {
//       isLoading(true);

//       var response = await RemoteService().ratingData();
//       if (response != null) {
//         tailorlist.value = response;
//       }
//     } catch (e) {
//       Get.snackbar("Message", e.toString());
//     } finally {
//       isLoading(false);
//     }
//   // }
// // 
//   @override
//   void onInit() {
//     fetchData();
//     // fetchDatas();
//     super.onInit();
//   }
// }
