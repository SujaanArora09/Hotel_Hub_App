import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/Navigation.dart';
import 'package:hotel_app2/Screens/HotelPage.dart';
import '../utils/Constants.dart';

class PopularHotelBox extends StatelessWidget {
  const PopularHotelBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        NextScreen(context, HotelPage());
      },
      child: Container(
        padding: EdgeInsets.all(10),
        width: 177,
        height: 206,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Container(
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset("assets/images/HotelImage.png"),
            ),
            const Text(
              "Raddison Blu",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Thane",
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: 8,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "₹ 3,493",
                  style: TextStyle(
                    color: Color(0xff1e91b6),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "/night",
                  style: TextStyle(
                    color: Color(0xff919191),
                    fontSize: 10,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 13,),

                Expanded(
                  child: Row(
                    children:[
                      Icon(Icons.star_purple500_outlined,color:Color(0xfff28f3b),size: 12,),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}