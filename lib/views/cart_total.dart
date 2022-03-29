import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/controller/cartcontroller.dart';
import 'package:get/get.dart';

class CArtTotal extends StatelessWidget {
  CArtTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartController = Get.find<CartController>();
    // return Obx(
    //   () => controller.items == 0
    //       ? SizedBox()
    //       : Container(
    //           color: Colors.grey.shade300,
    //           padding: EdgeInsets.all(10),
    //           width: MediaQuery.of(context).size.width,
    //           height: 50,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Container(
    //                 child: Text("Items(" + controller.items.toString() + ")"),
    //               ),
    //               Container(
    //                 child: Text("Total :" + controller.total.toString()),
    //               )
    //             ],
    //           ),
    //         ),
    // );
    return Obx(
      () => cartController.cartItems.value.data.isEmpty
          ? const SizedBox()
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "Items( ${cartController.cartItems.value.data.length} )"),
                            //               ),
                            // Text("Total :" + cartController.cartItems.value.data.a.toString())
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffffbf00)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Proceed to checkout',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'confirm');
                                  print('Pressed');
                                },
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
