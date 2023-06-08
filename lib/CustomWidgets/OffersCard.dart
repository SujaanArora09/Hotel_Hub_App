import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: 208,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xffebfaff),
      ),
      child: DottedBorder(
        color: const Color(0xff1e91b6),
        borderType: BorderType.RRect,
        radius: const Radius.circular(18),
        dashPattern: const [8],
        strokeWidth: 1,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 53,
                height: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset("assets/images/VisaLogo.png"),
              ),
              const SizedBox(width: 21),
              const Text(
                "Upto 20% off on \nvisa cards",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "SF Pro Display",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
