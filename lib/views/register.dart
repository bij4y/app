// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/api/api.dart';

// import 'package:http/http.dart' as http;

// class RegsiterScreen extends StatefulWidget {
//   @override
//   _RegsiterScreenState createState() => _RegsiterScreenState();
// }

// class _RegsiterScreenState extends State<RegsiterScreen> {
//   var result;
//   bool flag = true;
//   bool npl = true;
//   GlobalKey<FormState> _key = GlobalKey<FormState>();
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController cpassword = TextEditingController();
//   // TextEditingController mobile = TextEditingController();
//   int _value = 1;
//   // Future registrationUser() async {
//   //   // url to registration php script
//   //   var apiURL = "http://192.168.18.8:8000/api/cate";
//   //   //json maping user entered details
//   //   Map mapeddate = {
//   //     'category_id': _value.toString(),
//   //   };
//   //   //send  data using http post to our php code
//   //   http.Response reponse = await http.post(Uri.parse(apiURL), body: mapeddate);
//   //   //getting response from php code, here
//   //   var data = jsonDecode(reponse.body);
//   //   print(data);
//   // }

//   void _showialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Sorry ", style: TextStyle(color: Colors.red)),
//           content: const Text("Registration failed",
//               style: TextStyle(color: Colors.red)),
//           actions: [
//             FlatButton(
//               child: const Text(
//                 "Ok",
//                 style: TextStyle(color: Colors.black),
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Text(
//                 "Sign Up",
//                 style: TextStyle(
//                     color: Colors.blueGrey,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Form(
//                 key: _key,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         controller: name,
//                         validator: (value) =>
//                             value!.isEmpty ? "required" : null,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.person_add),
//                           hintText: "Enter Your Name",
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       TextFormField(
//                         controller: email,
//                         validator: (val) =>
//                             !val!.contains('@') ? 'Invalid Email' : null,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.email),
//                           hintText: "Email",
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       // TextFormField(
//                       //   keyboardType: TextInputType.number,
//                       //   controller: mobile,
//                       //   validator: (value) => value!.length < 10
//                       //       ? "Please enter valid number"
//                       //       : null,
//                       //   decoration: InputDecoration(

// //     prefixIcon: Icon(Icons.phone_android),
//                       //     hintText: "Mobile Number",
//                       //   ),
//                       // ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       TextFormField(
//                         obscureText: flag,
//                         validator: (val) => val!.length < 6
//                             ? 'Password too short at least 6 letters'
//                             : null,
//                         controller: password,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.lock),
//                           suffixIcon: IconButton(
//                               icon: flag == true
//                                   ? Icon(Icons.visibility)
//                                   : Icon(Icons.visibility_off),
//                               onPressed: () {
//                                 if (flag == true) {
//                                   flag = false;
//                                 } else {
//                                   flag = true;
//                                 }
//                                 setState(() {});
//                               }),
//                           hintText: "Password",
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       TextFormField(
//                         obscureText: npl,
//                         controller: cpassword,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.lock),
//                           suffixIcon: IconButton(
//                               icon: npl == true
//                                   ? Icon(Icons.visibility)
//                                   : Icon(Icons.visibility_off),
//                               onPressed: () {
//                                 if (npl == true) {
//                                   npl = false;
//                                 } else {
//                                   npl = true;
//                                 }
//                                 setState(() {});
//                               }),
//                           hintText: "Confirm Password",
//                         ),
//                         validator: (String? value) {
//                           if (value != null && value.isEmpty) {
//                             return "required";
//                           }
//                           if (password.text != password.text) {
//                             return "password don't match";
//                           }

//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               child: ElevatedButton(
//                                   onPressed: () async {
//                                     if (_key.currentState!.validate()) {
//                                       Map data = {
//                                         'name': name.text,
//                                         'email': email.text,
//                                         // 'mobile': mobile.text,
//                                         'password': password.text,
//                                       };
//                                       print("Register Successful");
//                                       var response = await Api()
//                                           .loginRegister(data, 'register');
//                                       var result = json.decode(response.body);
//                                       if (result['code'] == 401) {
//                                         _showialog(context);
//                                       }
//                                       if (result['code'] == 200) {
//                                         print("Register Successful");
//                                         // return "Register Successful";
//                                         Navigator.popAndPushNamed(
//                                             context, 'login');
//                                         // SharedPreferences preferences =
//                                         //     await SharedPreferences.getInstance();
//                                         // preferences.setString('token', result['token']);

//                                       }

//                                       print(result['code']);
//                                     }
//                                   },
//                                   child: Text(
//                                     "Register",
//                                     style: TextStyle(
//                                       color: Colors.white60,
//                                     ),
//                                   )),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               child: ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, '/');
//                                   },
//                                   child: Text(
//                                     "Already Have an Account",
//                                     style: TextStyle(
//                                       color: Colors.white60,
//                                     ),
//                                   )),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/api/api.dart';
import 'package:flutter_tailor_app/utility/customfield.dart';
import 'package:flutter_tailor_app/utility/form.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int _value = 1;
  bool donkey = true;
  bool npl = true;
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // SigninController signinController = Get.put(SigninController());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Tailor',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color(0xffeeeeee),
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(color: Color(0xffeeeeee)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/dashboard");
                                },
                                child: Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (val) {
                                      setState(() {
                                        _value = _value;
                                      });
                                    }),
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Create an account  ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text: 'Are you new?',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Row(
                              children: [
                                Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (val) {
                                      setState(() {
                                        _value = _value;
                                      });
                                    }),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Already. sign-In?',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Form(
                            key: _key,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          TextForm.horizontalScreenPadding,
                                      vertical: TextForm.verticalscreenPadding),
                                  child: TextFormField(
                                    controller: name,
                                    validator: (value) =>
                                        value!.isEmpty ? "Required" : null,
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      prefixIcon: const Icon(
                                        Icons.person_add,

                                        // color: const Color(0xff1a2d40),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          TextForm.horizontalScreenPadding,
                                      vertical: TextForm.verticalscreenPadding),
                                  child: TextFormField(
                                    controller: mobile,
                                    validator: (value) =>
                                        value!.isEmpty ? "Required" : null,
                                    decoration: InputDecoration(
                                      hintText: "Contact",
                                      prefixIcon: const Icon(
                                        Icons.phone_android,

                                        // color: const Color(0xff1a2d40),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          TextForm.horizontalScreenPadding,
                                      vertical: TextForm.verticalscreenPadding),
                                  child: TextFormField(
                                    controller: email,
                                    validator: (value) =>
                                        value!.isEmpty ? "Required" : null,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: const Icon(
                                        Icons.email,

                                        // color: const Color(0xff1a2d40),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          TextForm.horizontalScreenPadding,
                                      vertical: TextForm.verticalscreenPadding),
                                  child: TextFormField(
                                    controller: password,
                                    obscureText: donkey,
                                    validator: (value) =>
                                        value!.isEmpty ? "Required" : null,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            donkey = !donkey;
                                            setState(() {});
                                            print(donkey);
                                          },
                                          icon: Icon(
                                            donkey == false
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          )),
                                      hintText: "Password",
                                      prefixIcon: const Icon(
                                        Icons.lock,

                                        // color: const Color(0xff1a2d40),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          TextForm.horizontalScreenPadding,
                                      vertical: TextForm.verticalscreenPadding),
                                  child: TextFormField(
                                    controller: cpassword,
                                    obscureText: npl,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            npl = !npl;
                                            setState(() {});
                                            print(npl);
                                          },
                                          icon: Icon(
                                            npl == false
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          )),
                                      hintText: "Confirm Password",
                                      prefixIcon: const Icon(
                                        Icons.lock,

                                        // color: const Color(0xff1a2d40),
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value != null && value.isEmpty) {
                                        return "required";
                                      }
                                      if (password.text != password.text) {
                                        return "password don't match";
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (_key.currentState!.validate()) {
                                        Map data = {
                                          'name': name.text,
                                          'email': email.text,
                                          'mobile': mobile.text,
                                          'password': password.text,
                                        };
                                        print("Register Successful");
                                        var response = await Api()
                                            .loginRegister(data, 'register');
                                        var result = json.decode(response.body);
                                        if (result['code'] == 401) {
                                          Get.snackbar(
                                              "Sorry", "Registration Failed ",
                                              snackPosition: SnackPosition.TOP,
                                              duration: Duration(seconds: 4));
                                        }
                                        if (result['code'] == 200) {
                                          print("Register Successful");
                                          // return "Register Successful";
                                          Navigator.popAndPushNamed(
                                              context, 'login');
                                          // SharedPreferences preferences =
                                          //     await SharedPreferences.getInstance();
                                          // preferences.setString('token', result['token']);

                                        }

                                        print(result['code']);
                                      }
                                    },
                                    child: const Text('Sign Up'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "By continuing,you agree to Tailor Conditions of Use and Privacy Notice.",
                              textScaleFactor: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
