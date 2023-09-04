import 'package:flutter/material.dart';

import '../themes/colors.dart';

class TextWidget {
  static Text mainText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.fontClr,
        fontSize: 40,
      ),
    );
  }
}
