import 'package:flutter/material.dart';

import 'package:pet_project/ui/login/widgets/background.dart';
import 'package:pet_project/ui/welcome/welcome_screen.dart';
import 'package:pet_project/ui/widgets/rounded_password_field.dart';
import 'package:pet_project/ui/widgets/rounded_button.dart';
import 'package:pet_project/ui/theme/colors.dart';
import 'package:pet_project/ui/widgets/rounded_input_field.dart';
// import 'package:pet_project/ui/widgets/text_field_container.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginScreenBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          RoundedInputField(
            hintText: "Username",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Password",
            icon: Icons.lock,
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              print("Nothello");
            },
            textColor: kPrimaryLightColor,
            color: kPrimaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an Account ? ",
                style: TextStyle(color: kPrimaryColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
