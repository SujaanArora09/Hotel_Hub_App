import 'package:flutter/material.dart';
import '../utils/Constants.dart';

class SearchResultPopularHotelBox extends StatelessWidget {
  const SearchResultPopularHotelBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(10),
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Expanded(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset("assets/images/SearchResultPopularHotelBoxImage.png"),
            ),
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
          SizedBox(height: 3,),
          const Text(
            "Thane",
            style: TextStyle(
              color: Color(0xff666666),
              fontSize: 8,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    "₹ 3,493",
                    style: TextStyle(
                      color: Color(0xff1e91b6),
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "/night",
                    style: TextStyle(
                      color: Color(0xff919191),
                      fontSize: 10,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 13,),

              Align(
                alignment: Alignment.centerRight,
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
    );
  }
}