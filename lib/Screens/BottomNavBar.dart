import 'package:flutter/material.dart';
import 'package:hotel_app2/Screens/Booked.dart';
import 'package:hotel_app2/Screens/Profile.dart';
import 'package:hotel_app2/Screens/home.dart';
import '../utils/Constants.dart';
import 'Saved.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List body = [
    HomeScreen(),
    Booked(),
    Saved(),
    ProfileNav(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[index],
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                    "assets/images/HomeIcon.png",
                    "Home",
                    index == 0 ? Color(0xff1e91b6) : black.withOpacity(.5)),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                    "assets/images/BookMarkLogo.png",
                    "Booked",
                    index == 1 ? Color(0xff1e91b6) : black.withOpacity(.5)),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                    "assets/images/HeartLogo.png",
                    "Saved",
                    index == 2 ? Color(0xff1e91b6) : black.withOpacity(.5)),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                    "assets/images/ProfileLogo.png",
                    "Profile",
                    index == 3 ? Color(0xff1e91b6) : black.withOpacity(.5)),
              ],
            ),
          ),
        ));
  }
}

FloatedWidget(String image, String text,  Color iconColor,
    {void Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: GestureDetector(
      onTap: onTap,
      child: Column(children: [
        Image.asset(
          image,
          color: iconColor,
          height: 25,
        ),
        addVerticalSpace(5),
        Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            color: iconColor,
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        )
      ]),
    ),
  );
}