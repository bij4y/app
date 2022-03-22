import 'package:flutter/material.dart';

import 'addcart.dart';

class CustomProductDetails extends StatelessWidget {
  const CustomProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                TopContainerCartDetails(),
                Container(
                  margin: EdgeInsets.only(top: 250),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        ColorSizeCartDetails(),
                        SizedBox(
                          height: 20,
                        ),
                        DesriptionCartDetails(),
                        SizedBox(
                          height: 30,
                        ),
                        // AddCartDetails(),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.green,
                                ),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.green),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ))),
                                    onPressed: () {},
                                    child: Text("Add to cart")),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopContainerCartDetails extends StatelessWidget {
  const TopContainerCartDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            "Cherry",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black),
          ),
          subtitle: Text(
            "Raymond",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    TextSpan(
                      text: "Rs.100",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: "/meter",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  "images/fabric.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DesriptionCartDetails extends StatelessWidget {
  const DesriptionCartDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          "Desription",
          style: TextStyle(fontSize: 18),
        ),
      ),
      subtitle: Text(
          "A textile[1] is a flexible material made by creating an interlocking bundle of yarns or threads, which are produced by spinning raw fibers (from either natural or synthetic sources) into long and twisted lengths.[2] Textiles are then formed by weaving, knitting, crocheting, knotting, tatting, felting, bonding, or braiding these yarns together."),
    );
  }
}

class ColorSizeCartDetails extends StatelessWidget {
  const ColorSizeCartDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // SizedBox(
              //   height: 50,
              // ),
              Text("Color", style: TextStyle(fontSize: 25)),
              Row(
                children: const [
                  ProductDetailsColor(
                    color: Colors.blue,
                    outlinecolor: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  ProductDetailsColor(
                    color: Colors.red,
                    outlinecolor: Colors.transparent,
                  ),
                  SizedBox(width: 8),
                  ProductDetailsColor(
                    color: Colors.green,
                    outlinecolor: Colors.transparent,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              //
              Text("Size", style: TextStyle(fontSize: 25)),
              Text(
                "24 meter",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductDetailsColor extends StatelessWidget {
  final Color color;
  final Color outlinecolor;
  // final bool isSelected;
  const ProductDetailsColor({
    required this.color,
    required this.outlinecolor,
    // this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // border: Border.all(color: isSelected ? color : Colors.transparent),
        border: Border.all(color: outlinecolor),
      ),
      child: Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
