import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () => NextScreen(context, LogInorSignUp()));
    super.initState();
  }

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
                "Abhi Hotels.",
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