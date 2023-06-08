import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/utils/Constants.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      appBar: AppBar(
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xfff5f9ff),
        title: const Text('Notifications',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            radius: 23,
            child: ClipOval(
              child: Image.asset("assets/images/NotificationCircleProfie.png",fit: BoxFit.cover,),
            ),
          ),
          title: const Text(
            "Book your dream hotel in just a few clicks! Enjoy amazing discounts and offers with Abhjeet Hotel Booking. Make your travel experience unforgettable!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
          subtitle: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "12:30 PM",
              style: TextStyle(
                color: Colors.black,
                fontSize: 8,
              ),
            ),
          ),
        );
      },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 16
      )
    );
  }
}