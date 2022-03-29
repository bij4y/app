import 'package:flutter_tailor_app/controller/tailorcontroller.dart';
import 'package:flutter_tailor_app/model/tailormodel.dart';
import 'package:flutter_tailor_app/services/tailorservices.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchController extends GetxController {
  // var advice = {}.obs;
  var tailorlist = TailorModel(data: []).obs;
  var foundPlayers = [].obs;

  var productlist = <Product>[].obs;

  var isLoading = true.obs;
  String? baseUrl = "http://192.168.18.8:8000/api";
  Future fetchData() async {
    try {
      isLoading(true);

      var response = await RemoteService().fetchTailorData();
      if (response != null) {
        tailorlist.value = response;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchData();
    foundPlayers.value = tailorlist.value.data;
    // fetchDatas();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void filterPlayer(String playerName) {
    var results = [];
    if (playerName.isEmpty) {
      results = tailorlist.value.data;
    } else {
      results = tailorlist.value.data
          .where((element) => element
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
    }
    foundPlayers.value = results;
  }
}
