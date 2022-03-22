import 'package:flutter_tailor_app/model/usermodel.dart';
import 'package:flutter_tailor_app/services/tailorservices.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  // var advice = {}.obs;
  var user = UserModel(
    id: 0,
    name: "",
    email: "",
    mobile: "",
    userType: "",
    emailVerifiedAt: "",
  ).obs;
  var isLoading = true.obs;
  String? baseUrl = "http://192.168.18.8:8000/api";
  Future fetchData() async {
    try {
      isLoading(true);

      var response = await RemoteService().userName();
      if (response != null) {
        user.value = response;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  // @override
  // void onInit() {
  //   fetchData();
  //   // fetchDatas();
  //   super.onInit();
  // }
}
