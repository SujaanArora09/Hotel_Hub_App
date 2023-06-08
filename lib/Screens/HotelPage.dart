import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_app2/CustomWidgets/GoogleMap.dart';
import 'package:hotel_app2/CustomWidgets/Navigation.dart';
import 'package:hotel_app2/CustomWidgets/ReadMoreWidget.dart';
import 'package:hotel_app2/Screens/ChooseRoom.dart';
import 'package:hotel_app2/Screens/Reviews.dart';

import '../CustomWidgets/CustomButtonGradient.dart';
import '../CustomWidgets/PopularHotelBox.dart';
import 'home.dart';

List images = [
  "assets/images/HotelImage1.png",
  "assets/images/HotelImage2.png",
  "assets/images/HotelImage3.png",
];

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  _HotelPageState createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  bool _isLiked = false;
  bool _isInterior = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Expanded(
                            child: Container(
                              height: 235,
                              margin: EdgeInsets.only(top: 35.5),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: images.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.asset(images[index]),
                                  );
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            top: 55,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: Icon(Icons.share, color: Colors.black),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    icon: Icon(
                                      _isLiked ? Icons.favorite : Icons.favorite_border,
                                      color: Colors.redAccent,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isLiked = !_isLiked;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 13,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(51),
                                color: Color(0xff161616),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4 ),
                              child: Row(
                                children:[
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(Icons.photo_size_select_actual_outlined,color: Colors.white,size: 13,),
                                  ),
                                  SizedBox(width: 4),
                                  const Text(
                                    "1/7",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 11,
                            bottom: 13,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isInterior = !_isInterior;
                                });
                              },
                              child: Container(
                                width: 119,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.white,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 2),
                                child:

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Interior",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: _isInterior? Color(0xff2f2f2f):Color(0xff1e91b6),
                                            fontSize: 12,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Container(
                                          width: 1,
                                          color:  Color(0xffafafaf),
                                          margin: EdgeInsets.only(left: 5,right: 5),
                                        ),
                                        Text(
                                          "Exterior",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: _isInterior? Color(0xff1e91b6): Color(0xff2f2f2f),
                                            fontSize: 12,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Raddison Hotel ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Text(
                                      "Thane West",
                                      style: TextStyle(
                                        color: Color(0xff929292),
                                        fontSize: 14,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 12,),
                                    const SizedBox(width: 4),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xfff28f3b),
                                      ),
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2, ),
                                      child: const Text(
                                        "4.3/5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontFamily: "Satoshi Variable",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Best Offer",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff1e91b6),
                                        fontSize: 12,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "₹3,493",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff1e91b6),
                                        fontSize: 24,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "₹ 4,433",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Color(0xff5d5d5d),
                                        fontSize: 12,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "+ ₹ 594 taxes and fee",
                                      style: TextStyle(
                                        color: Color(0xff5d5d5d),
                                        fontSize: 10,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12),
                              height: 45,
                              child: Row(
                                children:[
                                  Expanded(
                                    child: DatesAndGuestDetails(
                                      Icon(Icons.calendar_today_outlined),
                                      "Check-In & Check-Out",
                                      "20 Aug, Sat - 21 Aug, Sun",
                                    ),),
                                    SizedBox(width: 6,),
                                    Expanded(
                                      child: DatesAndGuestDetails(
                                        Icon(Icons.person_outline),
                                        "Guests and Rooms",
                                        "1 Guest / 1 Room",
                                      ),
                                    ),
                                ]
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Color(0xffa1a1a1), width: 1, ),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4, ),
                                child: const Text(
                                  "1 Night",
                                  style: TextStyle(
                                    color: Color(0xff494949),
                                    fontSize: 10,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "What this Place Offers",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          WhatPlaceOffers(Icon(Icons.pool,color: Color(0xff1e91b6),),"Pool"),
                          SizedBox(width: 20),
                           WhatPlaceOffers(Icon(Icons.wifi,color: Color(0xff1e91b6),),"Wi-Fi"),
                          SizedBox(width: 20),
                           WhatPlaceOffers(Icon(Icons.car_rental_outlined,color: Color(0xff1e91b6),),"Car"),
                          SizedBox(width: 20),
                           WhatPlaceOffers(Icon(Icons.local_parking,color: Color(0xff1e91b6),),"Parking"),
                          SizedBox(width: 20),
                        ],
                      ),
                      SizedBox(height: 11,),
                      const Text(
                        "About the Hotel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8,),
                      const ReadMoreText(
                        style :TextStyle(
                          color: Color(0xff7b7b7b),
                          fontSize: 12,
                        ),
                          trimLines:10,
                          trimMode:TrimMode.Line,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl."
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl."),
                      //GoogleMapWidget()
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                          child: Image.asset("assets/images/MapImage.png")),
                      const Text(
                        "Reviews",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Divider(),
                      const SizedBox(
                        height: 450,
                          child: ReviewWidget()),
                      Align(
                        alignment: Alignment.center,
                        child: Material(
                          color: Color(0xff1e91b6),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {
                              NextScreen(context, Reviews());
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              width: 100,
                              height: 30,
                              alignment: Alignment.center,
                              child: const Text(
                                "View More",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Similar Hotels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        height: 206,
                        margin: const EdgeInsets.only(bottom: 70),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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
              ],

            ),
          ),
          Positioned(
            bottom: 0,left: 15,right: 15,
            child: CustomButtonGradient(text:"Select Room",
              onClick: () {
              NextScreen(context, ChooseRoom());
              },

            ),
          )
        ],
      ),
    );
  }

  Expanded WhatPlaceOffers(Icon icon , String BaseHeading) {
    return Expanded(
      child: Column(
                children:[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffcce4eb), width: 0.76, ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 19, right: 21, top: 19, bottom: 21, ),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: icon
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    BaseHeading,
                    style: const TextStyle(
                      color: Color(0xff1e91b6),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
    );
  }

  Container DatesAndGuestDetails(Icon leading , String title ,String Subtitle) {
    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffaaaaaa), width: 1, ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x1418274b),
                              blurRadius: 1.62,
                              offset: Offset(0, 1.62),
                            ),
                            BoxShadow(
                              color: Color(0x1e18274b),
                              blurRadius: 1.21,
                              offset: Offset(0, 0.81),
                            ),
                          ],
                          color: Color(0xfff6f6f6),
                        ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 5,),
                            leading,
                            SizedBox(width: 5,),

                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color(0xff1c1c1c),
                                      fontSize: 10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    Subtitle,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color(0xff3d99ee),
                                      fontSize: 10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )

                                ],
                              ),
                            ),

                          ],
                        )

                    );
  }
}
class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: Container(
            height: 500,
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
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
                itemCount: 3),
          ),
        )

      ],
    );
  }
}
