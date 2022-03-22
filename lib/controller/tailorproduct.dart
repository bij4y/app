// import 'package:flutter_tailor_app/model/tailormodel.dart';
// import 'package:flutter_tailor_app/services/tailorservices.dart';
// import 'package:get/get.dart';

// class TailorProduct extends GetxController {
//   // var advice = {}.obs;
//   var productlist = <Product>[].obs;
//   // var productlist = <Product>[].obs;

//   var isLoading = true.obs;
//   String? baseUrl = "http://192.168.18.8:8000/api";
//   Future fetchData() async {
//     try {
//       isLoading(true);

//       var response = await RemoteService().productData();
      
//         productlist.value = response;
        
      
//     } catch (e) {
//       Get.snackbar("Message", e.toString());
//     } finally {
//       isLoading(false);
//     }
//   }

//   @override
//   void onInit() {
//     fetchData();
//     // fetchDatas();
//     super.onInit();
//   }
// }
