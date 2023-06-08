import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/Navigation.dart';
import '../utils/Constants.dart';
import 'LogInorSignUp.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}
class _EditProfileScreenState extends State<EditProfileScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Scaffold(
          backgroundColor:Color(0xfff5f9ff),
          body:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Stack(
                children: [Center(
                  child: Column(
                    children: [
                         Container(
                           margin: const EdgeInsets.only(top: 100,bottom: 15),
                           child: ClipOval(
                             child: SizedBox(
                                height: 80,
                                  width: 80,
                                  child: Image.asset("assets/images/ProfilePhotoGirl.png",fit: BoxFit.fitHeight,)),
                           ),
                         ),
                      Container(
                        margin: EdgeInsets.only(bottom: 60),
                        child: const Text(
                          "Change Profile picture",
                          style: TextStyle(
                            color: Color(0xff1e91b6),
                            fontSize: 12,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      EditProfileTextfield("Enter Name"),
                      EditProfileTextfield("Email Address"),
                      EditProfileTextfield("Phone Number"),
                      EditProfileTextfield("Create Password"),
                      Align(
                        alignment: Alignment.centerRight  ,
                        child: TextButton(onPressed: (){

                        }, child: const SizedBox(
                          height: 11,
                          child: Text(
                            "Change Password?",
                            style: TextStyle(
                              color: Color(0xff1e91b6),
                              fontSize: 10,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                      ),

                    ],
                  ),
                ),

                ]
              ),
            ),
          ),

      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not Neha ?",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
              TextButton(onPressed: (){

              }, child: const SizedBox(
                height: 14,
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff1e91b6),
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
            ],
          ),
        )
      ]
    );
  }

  Container EditProfileTextfield(String hint) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                    hintText: hint,
                    hintStyle: const  TextStyle(
                      color: Color(0xff606060),
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: Color(0xffd5d5d5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      borderSide:  const BorderSide(
                        width: 2.0,
                        color: Color(0xffd5d5d5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      borderSide: const BorderSide(
                        width: 2.0,
                        color:Color(0xffd5d5d5),
                      ),
                    ),
                  ),
                ),
    );
  }
}