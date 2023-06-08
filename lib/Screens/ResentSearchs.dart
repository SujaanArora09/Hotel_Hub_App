import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/DetailsAAndSearchButton.dart';
import 'package:hotel_app2/CustomWidgets/ResentSearchBox.dart';

import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/PopularHotelBox.dart';
import 'LogInorSignUp.dart';
import 'home.dart';

class ResentSearchScreen extends StatefulWidget {
  const ResentSearchScreen({super.key});

  @override
  State<ResentSearchScreen> createState() => _ResentSearchScreenState();
}

class _ResentSearchScreenState extends State<ResentSearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 50),
             child: DetailsAndSearchButton(),
          ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 20),
            child: const Text(
              "Recent Searches",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 95,
            margin: const EdgeInsets.only(bottom: 12,top: 12),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(width: 15,),
                ResentSearchBox(),
                SizedBox(width: 8,),
                ResentSearchBox(),
                SizedBox(width: 8,),
                ResentSearchBox(),
                SizedBox(width: 8,),
                ResentSearchBox(),
                SizedBox(width: 8,),
                ResentSearchBox(),
                SizedBox(width: 8,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: const Text(
              "Top Picks",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 206,
            margin: const EdgeInsets.only(bottom: 12,top: 12),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15,),
                Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                const SizedBox(width: 8,),
                Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                const SizedBox(width: 8,),
                Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                const SizedBox(width: 8,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}