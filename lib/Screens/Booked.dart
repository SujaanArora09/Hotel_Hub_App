import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class Booked extends StatefulWidget {
  const Booked({super.key});

  @override
  State<Booked> createState() => _BookedState();
}

class _BookedState extends State<Booked> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1e91b6),
        body:Container(
          child: const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff5435ff), Color(0xff36c8f6), Color(0xffa0fbcd)],
              ),
            ),
            child: Center(
              child: Text(
                "Booked",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
              )
            ),
          ),
        )

    );
  }
}