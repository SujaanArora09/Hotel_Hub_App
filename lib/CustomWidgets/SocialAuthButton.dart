import 'package:flutter/material.dart';
import '../utils/Constants.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(

            child: Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: shadowDecoration(8.5, 1, white),
                child: IconButton(
                  icon: Image.asset(
                    "assets/images/googlelogo.png",
                  ), onPressed: () {  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              decoration: shadowDecoration(8.5, 1, white),
              child: IconButton(
                icon: Image.asset("assets/images/facebooklogo.png"),
                onPressed: () {  },
              ),
            ),
          ),
        ],
      ),
    );
  }
}