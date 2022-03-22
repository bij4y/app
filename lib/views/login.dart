// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/utility/url.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

// import 'package:shared_preferences/shared_preferences.dart';

// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final _formKey = GlobalKey<FormState>();
//   late String email, password;
//   bool isLoading = false;
//   TextEditingController _emailController = new TextEditingController();
//   TextEditingController _passwordController = new TextEditingController();
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   late ScaffoldMessengerState scaffoldMessenger;
//   @override
//   Widget build(BuildContext context) {
//     scaffoldMessenger = ScaffoldMessenger.of(context);
//     return Scaffold(
//       key: _scaffoldKey,
//       body: SingleChildScrollView(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: <Widget>[
//               // Container(
//               //   width: double.infinity,
//               //   height: double.infinity,
//               //   child: Image.asset(
//               //     "images/profile.jpeg",
//               //     fit: BoxFit.fill,
//               //   ),
//               // ),
//               Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Center(
//                         child: Image.asset(
//                       "images/tailor.png",
//                       height: 240,
//                       width: 240,
//                       alignment: Alignment.center,
//                     )),
//                     SizedBox(
//                       height: 13,
//                     ),
//                     Text(
//                       "Sign In",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 1,
//                         fontSize: 23,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Form(
//                       key: _formKey,
//                       child: Container(
//                         margin:
//                             EdgeInsets.symmetric(vertical: 10, horizontal: 45),
//                         child: Column(
//                           children: <Widget>[
//                             TextFormField(
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                               controller: _emailController,
//                               decoration: InputDecoration(
//                                 enabledBorder: UnderlineInputBorder(
//                                     borderSide:
//                                         BorderSide(color: Colors.black)),
//                                 hintText: "Email",
//                                 hintStyle: TextStyle(
//                                     color: Colors.black, fontSize: 15),
//                               ),
//                               onSaved: (val) {
//                                 email = val!;
//                               },
//                             ),
//                             SizedBox(
//                               height: 16,
//                             ),
//                             TextFormField(
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                               controller: _passwordController,
//                               decoration: InputDecoration(
//                                 enabledBorder: UnderlineInputBorder(
//                                     borderSide:
//                                         BorderSide(color: Colors.black)),
//                                 hintText: "Password",
//                                 hintStyle: TextStyle(
//                                     color: Colors.black, fontSize: 15),
//                               ),
//                               onSaved: (val) {
//                                 email = val!;
//                               },
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             Stack(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     if (isLoading) {
//                                       return;
//                                     }
//                                     if (_emailController.text.isEmpty ||
//                                         _passwordController.text.isEmpty) {
//                                       scaffoldMessenger.showSnackBar(SnackBar(
//                                           content:
//                                               Text("Please Fill all fileds")));
//                                       return;
//                                     }
//                                     // login(_emailController.text,_passwordController.text);
//                                     setState(() {
//                                       isLoading = true;
//                                     });
//                                     //Navigator.pushReplacementNamed(context, "/home");
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: double.infinity,
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 10, horizontal: 0),
//                                     height: 50,
//                                     decoration: BoxDecoration(
//                                       border: Border.all(color: Colors.black),
//                                       borderRadius: BorderRadius.circular(50),
//                                     ),
//                                     child: Text(
//                                       "SUBMIT",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 16,
//                                           letterSpacing: 1),
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   child: (isLoading)
//                                       ? Center(
//                                           child: Container(
//                                               height: 26,
//                                               width: 26,
//                                               child: CircularProgressIndicator(
//                                                 backgroundColor: Colors.green,
//                                               )))
//                                       : Container(),
//                                   right: 30,
//                                   bottom: 0,
//                                   top: 0,
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "OR",
//                       style: TextStyle(fontSize: 14, color: Colors.black),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pushReplacementNamed(context, "/signup");
//                       },
//                       child: Text(
//                         "Don't have an account?",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 13,
//                             decoration: TextDecoration.underline,
//                             letterSpacing: 0.5),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Positioned(
//                 bottom: 20,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Text(
//                     "By continuing,you agree to Tailor Conditions of Use and \nPrivacy Notice.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.black54),
//                     textScaleFactor: 1,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   login(email, password) async {
//     Map data = {'email': email, 'password': password};
//     print(data.toString());
//     final response =
//         await http.post(Uri.parse("http://192.168.18.8:8000/api/login"),
//             headers: {
//               "Accept": "application/json",
//               "Content-Type": "application/x-www-form-urlencoded"
//             },
//             body: data,
//             encoding: Encoding.getByName("utf-8"));
//     setState(() {
//       isLoading = false;
//     });
//     if (response.statusCode == 200) {
//       Map<String, dynamic> resposne = jsonDecode(response.body);
//       if (!resposne['error']) {
//         Map<String, dynamic> user = resposne['data'];
//         print(" User name ${user['id']}");
//         savePref(1, user['name'], user['email'], user['id']);
//         Navigator.pushReplacementNamed(context, "/dashboard");
//         print("success");
//       } else {
//         print(" ${resposne['message']}");
//       }
//       scaffoldMessenger
//           .showSnackBar(SnackBar(content: Text("${resposne['message']}")));
//     } else {
//       scaffoldMessenger
//           .showSnackBar(SnackBar(content: Text("Please try again!")));
//     }
//   }

//   savePref(int value, String name, String email, int id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();

//     preferences.setInt("value", value);
//     preferences.setString("name", name);
//     preferences.setString("email", email);
//     preferences.setString("id", id.toString());
//     preferences.commit();
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tailor_app/api/api.dart';
import 'package:flutter_tailor_app/utility/customfield.dart';
import 'package:flutter_tailor_app/utility/form.dart';
import 'package:flutter_tailor_app/views/dashboard.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _value = 2;
  bool donkey = true;
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void _showialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Oops!",
          ),
          content: const Text(
            "Please login with valid number and password",
          ),
          actions: [
            ElevatedButton(
              child: const Text(
                "Ok",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

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
        body: Container(
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
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/register");
                              },
                              child: RichText(
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
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/register");
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
                        // const CustomFormField(
                        //   icon: Icons.email,
                        //   title: 'Email Address',
                        // ),
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
                            ],
                          ),
                        ),

                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/forgetpasswordpage");
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text("Forget password")),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    if (_key.currentState!.validate()) {
                                      Map data = {
                                        'email': email.text,
                                        'password': password.text
                                      };
                                      var response = await Api()
                                          .loginRegister(data, 'login');
                                      var result = json.decode(response.body);
                                      if (result['code'] == 500) {
                                        Get.snackbar("Oops!",
                                            "Please login with valid number and password ",
                                            snackPosition: SnackPosition.TOP,
                                            duration: Duration(seconds: 4));
                                      }
                                      if (result['code'] == 200) {
                                        SharedPreferences preferences =
                                            await SharedPreferences
                                                .getInstance();
                                        preferences.setString(
                                            'token', result['token']);
                                        Get.off(DashboradScreen());

                                        print(result['code']);
                                      }
                                    }
                                  },
                                  child: const Text('Sign In'),
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
        ));
  }
}

// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// import 'package:shared_preferences/shared_preferences.dart';

// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final _formKey = GlobalKey<FormState>();
//   late String email, password;
//   bool isLoading = false;
//   TextEditingController _emailController = new TextEditingController();
//   TextEditingController _passwordController = new TextEditingController();
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//   late ScaffoldMessengerState scaffoldMessenger;
//   @override
//   Widget build(BuildContext context) {
//     scaffoldMessenger = ScaffoldMessenger.of(context);
//     return Scaffold(
//         key: _scaffoldKey,
//         body: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   child: Image.asset(
//                     "assets/background.jpg",
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Center(
//                           child: Image.asset(
//                         "assets/logo.png",
//                         height: 30,
//                         width: 30,
//                         alignment: Alignment.center,
//                       )),
//                       SizedBox(
//                         height: 13,
//                       ),
//                       Text(
//                         "Learn With Us",
//                         // style: GoogleFonts.roboto(
//                         //     textStyle: TextStyle(
//                         //         fontSize: 27,
//                         //         color: Colors.white,
//                         //         letterSpacing: 1)),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Container(
//                         width: 180,
//                         child: Text(
//                           "RRTutors, Hyderabad",
//                           textAlign: TextAlign.center,
//                           // style: GoogleFonts.roboto(
//                           //   textStyle: TextStyle(
//                           //       color: Colors.white54,
//                           //       letterSpacing: 0.6,
//                           //       fontSize: 11),
//                           // ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Text(
//                         "Sign In",
//                         // textAlign: TextAlign.center,
//                         // style: GoogleFonts.roboto(
//                         //   textStyle: TextStyle(
//                         //     color: Colors.white,
//                         //     letterSpacing: 1,
//                         //     fontSize: 23,
//                         //   ),
//                         // ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text(
//                             "Learn new Technologies ????",
//                             // textAlign: TextAlign.center,
//                             // style: GoogleFonts.roboto(
//                             //   textStyle: TextStyle(
//                             //     color: Colors.white70,
//                             //     letterSpacing: 1,
//                             //     fontSize: 17,
//                             //   ),
//                             // ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Form(
//                         key: _formKey,
//                         child: Container(
//                           margin: EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 45),
//                           child: Column(
//                             children: <Widget>[
//                               TextFormField(
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                                 controller: _emailController,
//                                 decoration: InputDecoration(
//                                   enabledBorder: UnderlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.white)),
//                                   hintText: "Email",
//                                   hintStyle: TextStyle(
//                                       color: Colors.white70, fontSize: 15),
//                                 ),
//                                 onSaved: (val) {
//                                   email = val!;
//                                 },
//                               ),
//                               SizedBox(
//                                 height: 16,
//                               ),
//                               TextFormField(
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                 ),
//                                 controller: _passwordController,
//                                 decoration: InputDecoration(
//                                   enabledBorder: UnderlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.white)),
//                                   hintText: "Password",
//                                   hintStyle: TextStyle(
//                                       color: Colors.white70, fontSize: 15),
//                                 ),
//                                 onSaved: (val) {
//                                   email = val!;
//                                 },
//                               ),
//                               SizedBox(
//                                 height: 30,
//                               ),
//                               Stack(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () {
//                                       if (isLoading) {
//                                         return;
//                                       }
//                                       if (_emailController.text.isEmpty ||
//                                           _passwordController.text.isEmpty) {
//                                         scaffoldMessenger.showSnackBar(SnackBar(
//                                             content: Text(
//                                                 "Please Fill all fileds")));
//                                         return;
//                                       }
//                                       login(_emailController.text,
//                                           _passwordController.text);
//                                       setState(() {
//                                         isLoading = true;
//                                       });
//                                       //Navigator.pushReplacementNamed(context, "/home");
//                                     },
//                                     child: Container(
//                                       alignment: Alignment.center,
//                                       width: double.infinity,
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 10, horizontal: 0),
//                                       height: 50,
//                                       decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.white),
//                                         borderRadius: BorderRadius.circular(50),
//                                       ),
//                                       child: Text(
//                                         "SUBMIT",
//                                         textAlign: TextAlign.center,
//                                         // style: GoogleFonts.roboto(
//                                         //     textStyle: TextStyle(
//                                         //         color: Colors.white,
//                                         //         fontSize: 16,
//                                         //         letterSpacing: 1)),
//                                       ),
//                                     ),
//                                   ),
//                                   Positioned(
//                                     child: (isLoading)
//                                         ? Center(
//                                             child: Container(
//                                                 height: 26,
//                                                 width: 26,
//                                                 child:
//                                                     CircularProgressIndicator(
//                                                   backgroundColor: Colors.green,
//                                                 )))
//                                         : Container(),
//                                     right: 30,
//                                     bottom: 0,
//                                     top: 0,
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "OR",
//                         style: TextStyle(fontSize: 14, color: Colors.white60),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Image.asset(
//                         "assets/fingerprint.png",
//                         height: 36,
//                         width: 36,
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushReplacementNamed(context, "/signup");
//                         },
//                         child: Text(
//                           "Don't have an account?",
//                           // style: GoogleFonts.roboto(
//                           //     textStyle: TextStyle(
//                           //         color: Colors.white70,
//                           //         fontSize: 13,
//                           //         decoration: TextDecoration.underline,
//                           //         letterSpacing: 0.5)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   login(email, password) async {
//     Map data = {'email': email, 'password': password};
//     print(data.toString());
//     final response =
//         await http.post(Uri.parse("http://192.168.18.8:8000/api/login"),
//             headers: {
//               "Accept": "application/json",
//               "Content-Type": "application/x-www-form-urlencoded"
//             },
//             body: data,
//             encoding: Encoding.getByName("utf-8"));
//     setState(() {
//       isLoading = false;
//     });
//     if (response.statusCode == 200) {
//       Map<String, dynamic> resposne = jsonDecode(response.body);
//       if (!resposne['error']) {
//         Map<String, dynamic> user = resposne['data'];
//         print(" User name ${user['id']}");
//         savePref(1, user['name'], user['email'], user['id']);
//         Navigator.pushReplacementNamed(context, "/home");
//       } else {
//         print(" ${resposne['message']}");
//       }
//       scaffoldMessenger
//           .showSnackBar(SnackBar(content: Text("${resposne['message']}")));
//     } else {
//       scaffoldMessenger
//           .showSnackBar(SnackBar(content: Text("Please try again!")));
//     }
//   }

//   savePref(int value, String name, String email, int id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();

//     preferences.setInt("value", value);
//     preferences.setString("name", name);
//     preferences.setString("email", email);
//     preferences.setString("id", id.toString());
//     preferences.commit();
//   }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_tailor_app/api/api.dart';
// import 'package:flutter_tailor_app/utility/customfield.dart';
// import 'package:flutter_tailor_app/utility/form.dart';

// import 'package:get/get.dart';

// import 'package:shared_preferences/shared_preferences.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     bool flag = true;

//     GlobalKey<FormState> _key = GlobalKey<FormState>();
//     TextEditingController email = TextEditingController();
//     TextEditingController password = TextEditingController();
//     void _showialog(BuildContext context) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text(
//               "Oops!",
//             ),
//             content: const Text(
//               "Please login with valid number and password",
//             ),
//             actions: [
//               ElevatedButton(
//                 child: const Text(
//                   "Ok",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }

//     // Creating a Object by using GetXHelper Class and injection it in main.dart class so that  you can use getXHelper to call and pass use entered data

//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 120),
//                 child: RichText(
//                     text: const TextSpan(children: [
//                   TextSpan(
//                       text: 'Sign ',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 25,
//                       )),
//                   TextSpan(
//                       text: 'In',
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 25,
//                       )),
//                 ])),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Form(
//                     key: _key,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         TextFormField(
//                             keyboardType: TextInputType.emailAddress,
//                             validator: (String? value) {
//                               if (value != null && value.isEmpty) {
//                                 return "required";
//                               }

//                               return null;
//                             },
//                             controller: email,
//                             decoration: const InputDecoration(
//                                 hintText: "Email",
//                                 prefixIcon: Icon(Icons.phone_android))),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         TextFormField(
//                           validator: (String? value) {
//                             if (value != null && value.isEmpty) {
//                               return "required";
//                             }
//                             if (password.text != password.text) {
//                               return "password don't match";
//                             }

//                             return null;
//                           },
//                           controller: password,
//                           obscureText: flag,
//                           decoration: InputDecoration(
//                             hintText: "Password",
//                             suffixIcon: IconButton(
//                               icon: flag == true
//                                   ? const Icon(Icons.visibility)
//                                   : const Icon(Icons.visibility_off),
//                               onPressed: () {
//                                 if (flag == true) {
//                                   flag = false;
//                                 } else {
//                                   flag = true;
//                                 }
//                                 setState(() {});
//                               },
//                             ),
//                             prefixIcon: Icon(Icons.lock),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                       ],
//                     )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () async {
//                           if (_key.currentState!.validate()) {
//                             Map data = {
//                               'email': email.text,
//                               'password': password.text
//                             };
//                             var response =
//                                 await Api().loginRegister(data, 'login');
//                             var result = json.decode(response.body);
//                             if (result['code'] == 500) {
//                               _showialog(context);
//                             }
//                             if (result['code'] == 200) {
//                               SharedPreferences preferences =
//                                   await SharedPreferences.getInstance();
//                               preferences.setString('token', result['token']);
//                               // Get.off(HomeScreen());

//                               print(result['code']);
//                             }
//                           }
//                         },
//                         child: const Text(
//                           "Login",
//                           style: TextStyle(color: Colors.yellow),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.pushNamed(context, "register");
//                 },
//                 child: RichText(
//                     text: const TextSpan(children: [
//                   TextSpan(
//                       text: 'Are you new user?',
//                       style: TextStyle(color: Colors.grey, fontSize: 15)),
//                   TextSpan(
//                       text: 'Register',
//                       style: TextStyle(color: Colors.blue, fontSize: 20)),
//                 ])),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
