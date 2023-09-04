import 'package:flutter/material.dart';

import '../themes/colors.dart';

class TextWidget {
  static Text mainText(String text, {Color? color}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.fontClr,
        fontSize: 40,
      ),
    );
  }
}
