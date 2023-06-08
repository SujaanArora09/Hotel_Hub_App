import 'package:flutter/material.dart';
import '../utils/Constants.dart';

class KindOfStays extends StatelessWidget {
  const KindOfStays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x66000000),
      ),
      //padding: const EdgeInsets.only(left: 44, right: 43, top: 28, bottom: 29, ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver),
              child:Image.asset("assets/images/KindOfstayImage.png",fit: BoxFit.fill,),
            ),

            //ColoredBox(color: Color(0x66000000),),
            const Center(
              child: Text(
                "HOTELS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}