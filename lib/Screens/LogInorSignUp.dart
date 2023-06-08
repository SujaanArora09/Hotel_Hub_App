

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/CustomButtonGradient.dart';
import 'package:hotel_app2/Screens/OtpVerification.dart';

import '../CustomWidgets/CustomButton.dart';
import '../CustomWidgets/CustomTextField.dart';
import '../CustomWidgets/SocialAuthButton.dart';

class LogInorSignUp extends StatefulWidget {
  const LogInorSignUp({super.key});

  @override
  State<LogInorSignUp> createState() => _LogInorSignUpState();
}

class _LogInorSignUpState extends State<LogInorSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                    children:[
                      Image.asset('assets/images/logintop.png'),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Color(0x99000000),
                          ),
                          padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),

                          child: TextButton(
                            onPressed: () {
                              // add button functionality here
                            },
                            child: const Text(
                              'Skip',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),),
                          ),
                        ),
                      ),
                    ]
                ),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: const Text(
                    "Jorem ipsum dolor sit amet, consectetur ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  margin: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        width: 70,
                        height: 1,
                        color: const Color(0xffd4d1d1),
                      ),
                      const Text(
                        "Log in or sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff626262),
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 1,
                        color: const Color(0xffd4d1d1),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.only(right: 9),
                            padding: EdgeInsets.only(top: 12,right: 9,bottom: 12,left: 9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffe6e6e6), width: 1, ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 5,
                                  offset: Offset(2, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Image.asset("assets/images/IndianFlag.png"),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: CustomTextField(
                            hintText: 'Enter Mobile Number',
                            prefixText: "+91",
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: CustomButtonGradient(
                    text: 'Continue',
                    textStyle:  const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OtpVerification()),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        width: 140,
                        height: 1,
                        color: const Color(0xffd4d1d1),
                      ),
                      const Text(
                        "or",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff626262),
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 1,
                        color: const Color(0xffd4d1d1),
                      ),
                    ],
                  ),
                ),
                const SocialAuthButton(),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Column(
                    children:[
                      const Text(
                        "By Continuing, you agree to our",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.underline,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),

                              ), onPressed: () {  },
                              child: const Text('Terms of Service'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            height: 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.underline,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),

                              ), onPressed: () {  },
                              child: const Text('Privacy Policy'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
