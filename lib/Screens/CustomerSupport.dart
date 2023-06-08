import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/CustomExpantionPannel.dart';
import 'package:hotel_app2/Screens/BottomNavBar.dart';
import 'package:hotel_app2/Screens/MailUS.dart';
import 'package:hotel_app2/Screens/Profile.dart';
import 'package:hotel_app2/utils/Constants.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class CustomerSupport extends StatefulWidget {
  const CustomerSupport({super.key});

  @override
  State<CustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerLeft,
                  child: IconButton(onPressed: () {
                      NextScreen(context, const BottomNavigation());
                  },
                  icon: const Icon(Icons.cancel,color: Color(0xff727272),size: 40,))),
              SizedBox(height:180,child: Image.asset("assets/images/CustomerSupportImage.png")),
              Container(
                margin: EdgeInsets.only(left: 40,right: 40,top: 16,bottom: 40),
                child: const Text(
                  "We’re here to help you so please get in touch with us.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                  const Text(
                  "Frequently asked questions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0f1728),
                    fontSize: 24,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                  ),),
                    SizedBox(height: 15,),
                    Steps(),
                    SizedBox(height: 15,),
                    Container(
                      width: 328,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xfff8f9fb),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32, ),
                      child: Column(
                        children:[
                          SizedBox(
                            width: 120,
                            height: 56,
                            child: Stack(
                              children:[
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset("assets/images/GetInTouch1Image.png")
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset("assets/images/GetInTouch3Image.png")
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset("assets/images/Getintouch2Image.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          Column(
                            children:const [
                              Text(
                                "Still have questions?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff0f1728),
                                  fontSize: 20,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Can’t find the answer you’re looking for? Please chat to our friendly team.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff667084),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          GestureDetector(
                            onTap: (){
                              NextScreen(context, MailUs());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0xff1e91b6), width: 1, ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x0c101828),
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                                color: const Color(0xff1e91b6),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10, ),
                              child: const Text(
                                "Get in touch",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

