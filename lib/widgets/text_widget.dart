import 'package:flutter/material.dart';

import '../themes/colors.dart';

class TextWidget {
  static Text mainText(String text, {Color? color, String? fontFamily}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.fontClr,
        fontFamily: fontFamily ?? 'urduFonts',
        fontSize: 40,
      ),
    );
  }
}
