import 'package:flutter/material.dart';

import 'package:pet_project/ui/welcome/widgets/welcome_screen_background.dart';
import 'package:pet_project/ui/widgets/rounded_button.dart';
import 'package:pet_project/ui/theme/colors.dart';

Map smallMap = new Map();

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WelcomeScreenBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Image.asset(
            'assets/images/chat.png',
            width: size.width * 0.5,
          ),
          RoundedButton(
            text: "WELCOME",
            press: () {
              print("Nothello");
            },
            textColor: kPrimaryLightColor,
            color: kPrimaryColor,
          ),
          RoundedButton(
            text: "REGISTRATION",
            press: () {
              print("hello");
            },
            textColor: kPrimaryColor,
            color: kPrimaryLightColor,
          ),
        ],
      ),
    );
  }
}
