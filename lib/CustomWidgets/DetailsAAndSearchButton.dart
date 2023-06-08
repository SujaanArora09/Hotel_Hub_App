import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/Navigation.dart';
import 'package:hotel_app2/Screens/ResentSearchs.dart';
import 'package:hotel_app2/Screens/SearchResult.dart';

import 'CustomButton.dart';

class DetailsAndSearchButton extends StatelessWidget {
  const DetailsAndSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
              NextScreen(context, ResentSearchScreen());
          },
          child: Container(
            margin: const EdgeInsets.only(right: 15,left: 15),
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xffcce1e8), width: 1, ),
              color: Color(0xfffbfbfb),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "City/Area/Hotel Name",
                        style: TextStyle(
                          color: Color(0xff7699a4),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Pune",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Color(0xffcde2e9),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children:  [
                            const Text(
                              "Date",
                              style: TextStyle(
                                color: Color(0xff7699a4),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5,),
                            const Text(
                              "23 Mar - 25 Mar",
                              style: TextStyle(
                                color: Color(0xff1e91b6),
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: const Color(0xffa1a1a1), width: 1, ),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children:const [
                                  Text(
                                    "2 Night",
                                    style: TextStyle(
                                      color: Color(0xff494949),
                                      fontSize: 10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 4,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Room & Guests",
                              style: TextStyle(
                                color: Color(0xff7699a4),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "1 Room - 1 Guest",
                              style: TextStyle(
                                color: Color(0xff1e91b6),
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15,left: 15),
          child: CustomButton(text: 'Search',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
              onClick: (){
                NextScreen(context, SearchResultScreen());
              }),
        ),
      ],
    );
  }
}