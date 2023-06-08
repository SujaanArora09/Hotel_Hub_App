import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14.0),
    ),
    elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Stack(
            children:[

              Container(
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff2190b4), Colors.transparent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Image.asset(
              'assets/images/DiscountCardImage.png',
              fit: BoxFit.cover,
    ),
            ),
              Container(
                margin: const EdgeInsets.only(left: 40,top: 40),
                child: const SizedBox(
                  width: 156,
                  child: Text(
                    "Book Hotel Upto 20% Off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),
      )
    );
  }
}
