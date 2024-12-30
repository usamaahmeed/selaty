import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AppTextStyles {
  TextStyle normalText({double fontSize = fontR14}) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Cairo',
    );
  }
}

extension TextStyleExtension on TextStyle {
  TextStyle textColorNormal(Color color) =>
      copyWith(color: color, fontFamily: 'Cairo');
  TextStyle textColorBold(Color color) =>
      copyWith(color: color, fontFamily: 'Cairo', fontWeight: FontWeight.bold);
}
