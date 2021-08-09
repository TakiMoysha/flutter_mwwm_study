import 'package:flutter/material.dart';
import 'package:pet_project/ui/theme/colors.dart';

class ColorScheme {
  final Map<String, Color> colorScheme;

  ColorScheme(this.colorScheme);

  Color getColor(String colorName) {
    var color;
    try {
      color = this.colorScheme[colorName];
    } catch (e) {
      color = Colors.red[900];
    }
    return color;
  }
}

final globalAppTheme = new ColorScheme(kPrimaryColorScheme);
