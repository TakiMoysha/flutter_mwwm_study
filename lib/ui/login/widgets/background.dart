import 'package:flutter/material.dart';

class LoginScreenBackground extends StatelessWidget {
  final Widget child;

  const LoginScreenBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top_left.png"),
            width: size.width * 0.3,
          ),
          Positioned(
            bottom: -4,
            right: -7,
            child: Image.asset("assets/images/main_bottom_right.png"),
            width: size.width * 0.4,
          ),
          child,
        ],
      ),
    );
  }
}
