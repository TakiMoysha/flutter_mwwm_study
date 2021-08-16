import 'package:flutter/material.dart';
import 'package:pet_project/ui/login/login_screen.dart';

import 'package:pet_project/ui/welcome/widgets/background.dart';
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
              fontSize: 24,
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
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
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
