import 'package:flutter/material.dart';

import 'package:pet_project/ui/theme/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: TextButton(
          onPressed: press,
          child: Text(text, style: TextStyle(color: textColor)),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}
