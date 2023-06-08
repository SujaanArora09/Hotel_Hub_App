import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app2/CustomWidgets/Navigation.dart';

import '../Screens/userDeailsBookroom.dart';

class AvailableRoomTile extends StatelessWidget {
  const AvailableRoomTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-30,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.77),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4.81,
            offset: Offset(1.92, 1.92),
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    const Text(
                      "Deluxe King Room",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.46,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "Non-Refundable",
                      style: TextStyle(
                        color: Color(0xff727272),
                        fontSize: 8,
                      ),
                    ),
                    const SizedBox(height: 8.3,),
                    const Text(
                      "-Price for 1 Adult",
                      style: TextStyle(
                        color: Color(0xff252525),
                        fontSize: 9.62,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      "-1 Extra-large double bed",
                      style: TextStyle(
                        color: Color(0xff252525),
                        fontSize: 9.62,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      "-Room size: 14x14",
                      style: TextStyle(
                        color: Color(0xff252525),
                        fontSize: 9.62,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8.3,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                            width: 12.09,
                            height: 12.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/Breakfastincluded.png')
                        ),
                        const SizedBox(width: 4.84),
                        const Text(
                          "Breakfast included in the price",
                          style: TextStyle(
                            color: Color(0xff23a865),
                            fontSize: 9.67,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3.85),
                    Row(
                      children:[
                        SizedBox(
                          width: 12.09,
                          height: 12.09,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset('assets/images/PrivateBathroom.png')
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 4.84),
                        const Text(
                          "Private Bathroom",
                          style: TextStyle(
                            color: Color(0xff23a865),
                            fontSize: 9.67,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3.85),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                            width: 12.09,
                            height: 12.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/FreeWiFiimage.png')
                        ),
                        SizedBox(width: 4.84),
                        const Text(
                          "Free WiFi",
                          style: TextStyle(
                            color: Color(0xff23a865),
                            fontSize: 9.67,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.85),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                            width: 12.09,
                            height: 12.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/AirConditioning.png')
                        ),
                        SizedBox(width: 4.84),
                        const Text(
                          "Air Conditioning",
                          style: TextStyle(
                            color: Color(0xff23a865),
                            fontSize: 9.67,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Price for 1 night (18 Mar - 19 Mar)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 7.69,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4,),
                    const Text(
                      "₹ 3,493",
                      style: TextStyle(
                        color: Color(0xff1e91b6),
                        fontSize: 17.31,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4,),
                    const Text(
                      "+ ₹ 594 taxes and fee",
                      style: TextStyle(
                        color: Color(0xff5d5d5d),
                        fontSize: 9.62,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],

                ),
                const SizedBox(width: 30,),
                Positioned(
                  top: 20,
                  right: -50,
                  child: Container(
                    width: 167.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:Image.asset("assets/images/realroomImage.png"),
                  ),
                ),

              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.69),
                  border: Border.all(color: const Color(0xff1e91b6), width: 0.96, ),
                ),
                child: TextButton(
                  onPressed: () {
                    NextScreen(context, UserDetailsBookRoom());
                  },
                  child: const Text(
                    "Select",
                    style: TextStyle(
                      color: Color(0xff1e91b6),
                      fontSize: 13.46,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}