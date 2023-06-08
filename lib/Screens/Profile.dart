import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/Screens/CustomerSupport.dart';
import 'package:hotel_app2/Screens/EditProfile.dart';

import '../CustomWidgets/Navigation.dart';
import 'LogInorSignUp.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({super.key});

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}
class _ProfileNavState extends State<ProfileNav> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xfff5f9ff),
        body:Container(
          padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
          child: Column(
            children: [

                 Row(
                   children: [
                     ClipOval(
                       child: SizedBox(
                          height: 80,
                            width: 80,
                            child: Image.asset("assets/images/ProfilePhotoGirl.png",fit: BoxFit.fitHeight,)),
                     ),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text(
                           "Neha Kakkar",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 20,
                             fontFamily: "Montserrat",
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text(
                           "+91 xxxxxxx270",
                           style: TextStyle(
                             color: Color(0xff0a75bf),
                             fontSize: 12,
                             fontFamily: "Inter",
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
              Container(
                margin: EdgeInsets.only(top:30,bottom: 30),
                  child: Divider(thickness: 2,color: Color(0xff2c5672))),
              ListTile(
                onTap: (){
                  NextScreen(context, EditProfileScreen());
                },
                  leading: const SizedBox(
                    height: 17,
                      child: Icon(Icons.person,color: Colors.black,)),
                  title: const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                ),
              const ListTile(
                leading: SizedBox(
                    height: 17,
                    child: Icon(Icons.notifications,color: Colors.black,)),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
              ),
              const ListTile(
                  leading: SizedBox(
                    height: 17,
                      child:  Icon(Icons.settings,color: Colors.black,)),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                ),
              ListTile(
                  leading: SizedBox(
                    height: 17,
                      child: Image.asset("assets/images/BookingHistoryLead.png")),
                  title: const Text(
                    "Booking History",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                ),
              ListTile(
                onTap: (){
                  NextScreen(context, CustomerSupport());
                },
                  leading: SizedBox(
                    height: 17,
                      child: Icon(Icons.support_agent_rounded,color: Colors.black,)),
                  title: const Text(
                    "Customer Support",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,),
                ),


            ],
          ),
        ),

    );
  }
}