import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/DetailsAAndSearchButton.dart';
import 'package:hotel_app2/CustomWidgets/ResentSearchBox.dart';
import 'package:hotel_app2/CustomWidgets/SearchResultPopularHotelBox.dart';
import 'package:hotel_app2/Screens/Filters.dart';

import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/PopularHotelBox.dart';
import '../utils/Constants.dart';
import 'LogInorSignUp.dart';
import 'home.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _ResentSearchScreenState();
}

class _ResentSearchScreenState extends State<SearchResultScreen> {

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
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 50,left: 15,right: 15,bottom: 15),
             child: TextField(
               decoration: InputDecoration(
                 filled: true,
                 fillColor: const Color(0xffdee4ec),
                 isDense: true,
                 contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                 /* -- Text and Icon -- */
                 hintText: "Taj Mahal Palace",
                 hintStyle: const TextStyle(
                   color: Color(0xff3a4657),
                   fontSize: 14,
                   fontFamily: "Montserrat",
                   fontWeight: FontWeight.w600,
                 ),// TextStyle
                 suffixIcon: const Icon(
                   Icons.search_rounded,
                   size: 26,
                   color: Colors.black54,
                 ), // Icon
                 /* -- Border Styling -- */
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(11.0),
                   borderSide: BorderSide(
                     width: 2.0,
                     color: transparent,
                   ), // BorderSide
                 ), // OutlineInputBorder
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(11.0),
                   borderSide:  BorderSide(
                     width: 2.0,
                     color: transparent,
                   ), // BorderSide
                 ), // OutlineInputBorder
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(11.0),
                   borderSide: const BorderSide(
                     width: 2.0,
                     color:Colors.transparent,
                   ), // BorderSide
                 ), // OutlineInputBorder
               ), // InputDecoration
             ),
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet<void>(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (BuildContext context) {
                  return  const SizedBox(
                      height: 800,
                      child: FiltersScreen());
                },
              );
            },
            child: Container(
              margin: EdgeInsets.all(15),
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(62),
                border: Border.all(color: Color(0xffa2a2a2), width: 1, ),
                color: Color(0x7fffffff),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6, ),
              child: Row(
                children:[
                  const Text(
                    "Filter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.filter_alt_outlined,size: 18,),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: const Text(
              "12 Results Found",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
              child: ListView.separated(
                  itemBuilder: (context,index){
                    return SearchResultPopularHotelBox();
                  },
                  separatorBuilder:(context,index) {
                    return  SizedBox(height: 10,);
                  },
                  itemCount: 12)
            ),
          ),
        ],
      ),
    );
  }
}