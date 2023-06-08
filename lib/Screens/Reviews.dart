import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}
double Rating = 4.5;
class _ReviewsState extends State<Reviews> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(

            appBar: AppBar(
              title: const Text("Costumer Reviews",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),),
              backgroundColor:  Color(0xfff5f9ff),
              elevation: 2,
              iconTheme: const IconThemeData(
                  color: Colors.black
              ),
            ),
            backgroundColor:const Color(0xfff5f9ff),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      SizedBox(width: 5,),
                      Text(
                        "234 Ratings",
                        style: TextStyle(
                          color: Color(0xff4fa2bd),
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        maxRating: 5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 40.0,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xff1e91b6),
                        ),
                        onRatingUpdate: (rating) {
                          Rating = rating;
                        },
                      ),
                      Text(
                        "$Rating",
                        style: const TextStyle(
                          color: Color(0xff1e91b6),
                          fontSize: 36,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],

                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20 ,bottom: 7),
                    child: const Text(
                      "Reviews",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.separated(
                          itemBuilder: (context,index){
                            return ListTile(
                              leading: CircleAvatar(
                                radius: 23,
                                child: ClipOval(
                                  child: Image.asset("assets/images/ProfilePhotoGirl.png",fit: BoxFit.cover,),
                                ),
                              ),
                              title: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Neha Kakkar",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          maxRating: 5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          itemBuilder: (context, _) => const Icon(
                                            Icons.star,
                                            color:  Color(0xfff28f3b),
                                          ),
                                          onRatingUpdate: (rating) {
                                            //Rating = rating;
                                          },
                                        ),
                                        const Text(
                                          "23 Mar",
                                          style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              subtitle: const Text(
                                "Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: 6),
                    ),
                  )

                ],
              ),
            )
        ),
      ),
    );
  }
}