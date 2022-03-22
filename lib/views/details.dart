import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/pages/customproductdetails.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F8F8),
        iconTheme: const IconThemeData(size: 22, color: Colors.black),
        elevation: 0,
        actions: [
          Icon(
            Icons.search_outlined,
          ),
          SizedBox(width: 10),
          Badge(
            badgeColor: Color(0xffc19a67),
            badgeContent: Text(
              "0",
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          SizedBox(width: 10),
          Badge(
              badgeColor: Color(0xffc19a67),
              badgeContent: Text(
                "0",
                style: TextStyle(color: Colors.white),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/checkoutpage");
                  },
                  icon: Icon(Icons.shopping_cart_outlined))),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: CustomProductDetails(),
    );
  }
}
