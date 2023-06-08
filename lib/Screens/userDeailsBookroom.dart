import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/CustomTextField.dart';
import 'package:hotel_app2/utils/Constants.dart';

import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/RoomInfoWidget.dart';
import '../CustomWidgets/SearchResultPopularHotelBox.dart';
import 'LogInorSignUp.dart';

class UserDetailsBookRoom extends StatefulWidget {
  const UserDetailsBookRoom({super.key});

  @override
  State<UserDetailsBookRoom> createState() => _UserDetailsBookRoomState();
}

bool _isChecked = false;

class _UserDetailsBookRoomState extends State<UserDetailsBookRoom> {
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xfff5f9ff),
          appBar: AppBar(
            elevation: 2,
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: const Color(0xfff5f9ff),
            title: const Text('Choose Room',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    "Your details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  CustomTextField(hintText: 'Phone Number'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "Log in",
                        style: TextStyle(
                          color: Color(0xff009bff),
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),)
                    ],
                  ),
                  CustomTextField(hintText: 'Emial',),
                  const Text(
                    "we’ll email you booking confirmation and reciepts",
                    style: TextStyle(
                      color: Color(0xff585858),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(hintText: 'First name',),
                  CustomTextField(hintText: 'Last name',),
                  const Text(
                    "Use the name on your government ID",
                    style: TextStyle(
                      color: Color(0xff585858),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(hintText: 'Date Of Birth',
                    suffix: true,
                    controller: dateController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Date';
                      }
                      return null;
                    },
                  ),
                  const Text(
                    "To sign up you need to be atleast 18 year old",
                    style: TextStyle(
                      color: Color(0xff585858),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 40,),
                  const Text(
                    "We’ll send you marketing emails, including deals and trip ideas. Opt out now or anytime from our emails or your account’s notification settings.",
                    style: TextStyle(
                      color: Color(0xff5d5d5d),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      const  Text(
                        "I don’t want to receive marketing emails",
                        style: TextStyle(
                          color: Color(0xff5d5d5d),
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 58,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,right: 15,left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        children: [
                          const Text(
                            "₹ 3,493",
                            style: TextStyle(
                              color: Color(0xff1e91b6),
                              fontSize: 18,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                              child: const Icon(Icons.keyboard_arrow_up_rounded,color: Color(0xff1e91b6),))
                        ],
                      ),
                      const Text(
                        "+ ₹ 594 taxes and fee",
                        style: TextStyle(
                          color: Color(0xff5d5d5d),
                          fontSize: 10,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff1e91b6),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10, ),
                      child: const Text(
                        "Next Step",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}