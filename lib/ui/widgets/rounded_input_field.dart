import 'package:flutter/material.dart';

import 'package:pet_project/ui/widgets/text_field_container.dart';
import 'package:pet_project/ui/theme/colors.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon, color: kPrimaryColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
