import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResentSearchBox extends StatelessWidget {
  const ResentSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffd9d9d9), width: 1, ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const Text(
            "Pune",
            style: TextStyle(
              color: Color(0xff1e91b6),
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "1 Adult",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: const [
                  Text(
                    "12 Mar - 23 Mar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(child: Icon(Icons.keyboard_arrow_right_sharp,size: 20,))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
