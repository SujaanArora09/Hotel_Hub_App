import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/PopularHotelBox.dart';
import 'package:hotel_app2/CustomWidgets/SavedHotelBox.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f9ff),
        appBar: AppBar(
          elevation: 2,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xfff5f9ff),
          title: const Text('Saved Hotels',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),),
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: GridView.count(
            scrollDirection: Axis.vertical,
              crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
          children: const [
            SavedHotelBox(),
            SavedHotelBox(),
            SavedHotelBox(),
            SavedHotelBox(),
            SavedHotelBox(),
            SavedHotelBox(),
            SavedHotelBox(),
            ],),
        )
    );
  }
}