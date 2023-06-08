

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_app2/CustomWidgets/CustomButtonGradient.dart';
import 'package:hotel_app2/Screens/BottomNavBar.dart';
import 'package:pinput/pinput.dart';

import '../CustomWidgets/CustomButton.dart';
import '../CustomWidgets/CustomTextField.dart';
import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/ResendButton.dart';
import '../CustomWidgets/SocialAuthButton.dart';
import '../utils/Constants.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  int countdown = 30;
  Timer? timer;

  @override
  void initState() {
    Timer(Duration(seconds: 4), () => NextScreen(context, BottomNavigation()));
    super.initState();
    startCountdown();
  }
  void startCountdown() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        countdown--;
        if (countdown == 0) {
          timer.cancel();
        }
      });
    });
  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  final TextEditingController _pinPutController = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  var code;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: width(context) * .2,
      height: width(context) * .185,
      textStyle: bodyText24w600(color: black),
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xff36c8f6),),
        borderRadius: BorderRadius.circular(8.5),
      ),
    );
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 150,),
                const Text(
                  "OTP Verification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 45,
                  margin: EdgeInsets.only(top: 80,bottom: 26),
                  child: RawKeyboardListener(
                    focusNode: FocusNode(),
                    onKey: (event) {
                      if (event.isKeyPressed(LogicalKeyboardKey.enter) && code.length == 4) {
                        // Move to the next screen
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => NextScreen(context,BottomNavigation()),
                        //   ),
                        // );
                      }
                    },
                    child: Center(
                      child: Form(
                        child: Pinput(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          key: Key('otpInput'),
                          length: 4,
                          controller: _pinPutController,
                          onChanged: (value) {
                            setState(() {
                              code = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Resend SMS in $countdown Sec',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:26 ),
                  child: TextButton(onPressed: (){

                  },
                      child: const Text(
                    "Resend OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                )
              ],
            ),
          ),
      ),
    );
  }
}


