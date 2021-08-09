import 'package:flutter/material.dart';

class WelcomeScreenBackground extends StatelessWidget {
  final Widget child;

  const WelcomeScreenBackground({
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
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/main_bottom_left.png"),
            width: size.width * 0.6,
          ),
          child,
        ],
      ),
    );
  }
}
