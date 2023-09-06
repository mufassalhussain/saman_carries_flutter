import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/configs/size_configs.dart';

import '../themes/colors.dart';

class TextWidget {
  static Text mainText(String text, {Color? color, String? fontFamily}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.fontClr,
        fontFamily: fontFamily ?? 'urduFonts',
        fontSize: getWidth(30),
      ),
    );
  }
}
