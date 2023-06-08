import 'package:flutter/material.dart';
import '../utils/Constants.dart';

class SavedHotelBox extends StatelessWidget {
  const SavedHotelBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.94),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4.47,
            offset: Offset(1.79, 1.79),
          ),
        ],
        color: Colors.white,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Container(
              height:  115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset("assets/images/SavedPopularHotelimage.png"),
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
                    fontSize: 14.31,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "/night",
                  style: TextStyle(
                    color: Color(0xff919191),
                    fontSize: 8.94,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 2,),

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
                            fontSize: 7.15,
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