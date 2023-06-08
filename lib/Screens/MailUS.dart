import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/CustomButtonGradient.dart';
import 'package:hotel_app2/CustomWidgets/CustomTextField.dart';
import 'package:hotel_app2/utils/Constants.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class MailUs extends StatefulWidget {
  const MailUs({super.key});

  @override
  State<MailUs> createState() => _MailUsState();
}

class _MailUsState extends State<MailUs> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xfff5f9ff),
        title: const Text('Mail Us',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            CustomTextField(hintText: 'Your Name'),
            CustomTextField(hintText: 'Registered Email'),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffacacac), width: 1, ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(left: 19, right: 150, top: 15,bottom: 20 ),
                  child: TextFormField(decoration: const InputDecoration(
                      hintText: "Your Query/ Issue",
                      hintStyle: TextStyle(
                        color: Color(0xffa4a4a4),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none),
                    maxLines: 5,)
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButtonGradient(text: 'Submit', onClick: (){

              }),
            )
          ],
        ),
      )
    );
  }
}