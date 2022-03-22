import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/utility/form.dart';

import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class AddTailor extends StatelessWidget {
  AddTailor({Key? key}) : super(key: key);
  Future registrationUser() async {
    // url to registration php script
    var apiURL = "http://192.168.1.12:8000/api/partner";
    //json maping user entered details
    Map mapeddate = {
      'name': name.text,
      'address': address.text,
      'contact': contact.text,
      'email': email.text,
      'regno': regno.text,
    };

    //send  data using http post to our php code
    http.Response reponse = await http.post(Uri.parse(apiURL),
        headers: {
          'Accept': 'application/json',
        },
        body: mapeddate);
    //getting response from php code, here
    var data = jsonDecode(reponse.body);
    print(data);
  }

  final _addFormKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController regno = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Register your Tailor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ListTile(
                title: Text("Why should you partner with Tailor?"),
                subtitle: Text(
                    "Tailor enables you to get 60% more revenue, 10x new customer and boost your brand visibility by providing insights to improve your business."),
              ),
              const Text("How it Works"),

              // ElevatedButton(onPressed: () {}, child: Text("Continue")),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: TextForm.horizontalScreenPadding,
                    vertical: TextForm.verticalscreenPadding),
                child: Column(
                  children: [
                    Form(
                        key: _addFormKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "required" : null,
                                controller: name,
                                decoration: InputDecoration(
                                    labelText: "Company Name",
                                    hintText: "Name ",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "required" : null,
                                controller: address,
                                decoration: InputDecoration(
                                    labelText: "Address",
                                    hintText: "Address",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: contact,
                                decoration: InputDecoration(
                                    labelText: "Contact",
                                    hintText: "Contact",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: regno,
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                minLines: 5,
                                decoration: InputDecoration(
                                    labelText: "Register no",
                                    hintText: "Register no. ",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: email,
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                minLines: 5,
                                decoration: InputDecoration(
                                    labelText: "Email Address",
                                    hintText: "Email Address",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        registrationUser();
                                        Navigator.pushNamed(
                                            context, "/tailordetails");
                                      },
                                      child: const Text("Save"),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
