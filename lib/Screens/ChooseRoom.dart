import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/utils/Constants.dart';

import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/RoomInfoWidget.dart';
import '../CustomWidgets/SearchResultPopularHotelBox.dart';
import 'LogInorSignUp.dart';

class ChooseRoom extends StatefulWidget {
  const ChooseRoom({super.key});

  @override
  State<ChooseRoom> createState() => _ChooseRoomState();
}

class _ChooseRoomState extends State<ChooseRoom> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8),
                    child: AvailableRoomTile()
                ),
                Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8),
                    child: AvailableRoomTile()
                ),
                Container(
                    margin: EdgeInsets.only(top: 8,bottom: 8),
                    child: AvailableRoomTile()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}