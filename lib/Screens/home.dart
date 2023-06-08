import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/CustomButton.dart';
import 'package:hotel_app2/CustomWidgets/DiscountCard.dart';
import 'package:hotel_app2/CustomWidgets/KindOfStays.dart';
import 'package:hotel_app2/CustomWidgets/PopularHotelBox.dart';
import 'package:hotel_app2/Screens/Notifications.dart';

import '../CustomWidgets/DetailsAAndSearchButton.dart';
import '../CustomWidgets/Navigation.dart';
import '../CustomWidgets/OffersCard.dart';
import 'LogInorSignUp.dart';
final List Cities = [
  'Pune',
  'Indore',
  'Goa',
  'Delhi',
  'Mumbai',
  'Jaipur'
];
final List CitiesImages = [
  'assets/images/PuneImage.png',
  'assets/images/IndoreImage.png',
  'assets/images/GoaImage.png',
  'assets/images/DelhiImage.png',
  'assets/images/MumbaiImage.png',
  'assets/images/Jaipurimg.png'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor:Color(0xfff5f9ff),
          body:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(onPressed: (){
                        NextScreen(context, Notifications());
                      }, icon: const Icon(
                          Icons.notifications_none_rounded,
                              color: Color(0xff1e91b6),
                      )),
                    ),
                  ),
                ),
                DetailsAndSearchButton(),
                SizedBox(width: 10,),
                Container(
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Popular Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),)

                    ],
                  ),
                ),
                SizedBox(
                  height: 206,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Explore by City",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),)

                    ],
                  ),
                ),

                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 60,
                                  height: 60,
                                  child: Image.asset(CitiesImages[index],fit: BoxFit.cover,),),
                              const SizedBox(height: 6,),
                              Text(
                                Cities[index],
                                style: const TextStyle(
                                  color: Color(0xff373737),
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder:(context,index) => const SizedBox(width: 0,) ,
                      itemCount: 6),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Highest Rated Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),)

                    ],
                  ),
                ),
                Container(
                  height: 206,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,bottom: 12),
                  child: const Text(
                    "Kind of stays you want",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  height: 72,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const KindOfStays()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const KindOfStays()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const KindOfStays()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const KindOfStays()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const KindOfStays()),
                      const SizedBox(width: 8,),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Highest Rated Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),)

                    ],
                  ),
                ),
                Container(
                  height: 206,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,bottom: 12),
                  child: const Text(
                    "Special Offers for you!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  height: 172,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 416,
                        child: GridView.count(
                          crossAxisCount: 2,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          childAspectRatio: 37 / 100,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 7, 7, 7),
                                child: OffersCard()),
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 7, 7, 7),
                                child: OffersCard()),
                            Container(
                              margin: EdgeInsets.all(7),
                                child: OffersCard()),
                            Container(
                              margin: EdgeInsets.all(7),
                                child: OffersCard()),
                            Container(
                              margin: EdgeInsets.fromLTRB(7, 7, 15, 7),
                                child: OffersCard()),
                            Container(
                              margin: EdgeInsets.all(7),
                                child: OffersCard()),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(width: 15,),
                      DiscountCard(),
                      SizedBox(width: 8,),
                      DiscountCard(),
                      SizedBox(width: 8,),
                      DiscountCard(),
                      SizedBox(width: 8,),
                      DiscountCard(),
                      SizedBox(width: 8,),
                      DiscountCard(),
                      SizedBox(width: 8,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text(
                        "Highest Rated Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(onPressed: (){

                      }, child: const Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),)

                    ],
                  ),
                ),
                Container(
                  height: 206,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 15,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                      Container(decoration:HotelBoxShadowDecoration(),child: const PopularHotelBox()),
                      const SizedBox(width: 8,),
                    ],
                  ),
                ),
              ],
            ),
          )

      ),
    );
  }
}




BoxDecoration HotelBoxShadowDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Color(0x19000000),
        blurRadius: 5,
        offset: Offset(2, 2),
      ),
    ],
    color: Colors.white,
  );
}