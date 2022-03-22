import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/model/rating_model.dart';

class RatingDetails extends StatelessWidget {
  final RatingModel model;
  RatingDetails({Key? key, required this.model}) : super(key: key);
  int sum = 0;
  int totalSpendQuantity = 0;
  List<int> spendList = [];
  List<int> quantityList = [];
  // void sum() {
  //   for (var i = 0; i < model.rating.length; i++) {
  //     if (model.rating[index].rating != null) {
  //       totalSpendAmount = totalSpendAmount + model.rating[index].rating;
  //     }
  //     // spendList.add(totalSpendAmount);
  //     print(totalSpendAmount);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text(model.rating),
          ],
        )),
      ),
    );
  }
}
