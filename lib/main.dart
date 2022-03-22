import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/bindings/controller_binding.dart';
import 'package:flutter_tailor_app/p/productprovider.dart';
import 'package:flutter_tailor_app/pages/add_tailor.dart';
import 'package:flutter_tailor_app/pages/search.dart';
import 'package:flutter_tailor_app/pages/tailordetails.dart';
import 'package:flutter_tailor_app/pages/tailorrating.dart';
import 'package:flutter_tailor_app/tailorpages/tabdemo.dart';
import 'package:flutter_tailor_app/tailorpages/tailorkodetails.dart';

import 'package:flutter_tailor_app/utility/forgetpassword.dart';
import 'package:flutter_tailor_app/utility/privacysetting.dart';
import 'package:flutter_tailor_app/views/confirm_page.dart';
import 'package:flutter_tailor_app/views/dashboard.dart';
import 'package:flutter_tailor_app/views/details.dart';
import 'package:flutter_tailor_app/views/final_cartpage.dart';
import 'package:flutter_tailor_app/views/search.dart';
import 'package:flutter_tailor_app/views/register.dart';
import 'package:flutter_tailor_app/views/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBinding(),

      home: const DashboradScreen(),
      // routes: {
      //   "/": (context) => const SpalshScreen(),
      //   "/dashboard": (context) => const DashboradScreen(),
      //   // "/partner": (context) => const RegisterTailorPartner(),
      //   // "/login": (context) => const LoginScreen(),
      //   "/register": (context) => const RegisterScreen(),
      //   // "rate": (context) => const TailorRating(),
      //   // "search": (context) => const Hom(),

      //   "/add_tailor": (context) => AddTailor(),
      //   "/privacy": (context) => const PrivacyScreen(),
      //   "/forgetpasswordpage": (context) => const ForgetPassword(),
      //   // "/tailordetails": (context) =>  TailorDetails(),
      //   "/productdetails": (context) => const ProductDetailsPage(),
      //   "cart": (context) => CardProducts(),
      //   "confirm": (context) => ConfirmPage(),
      // },
    );
  }
}
