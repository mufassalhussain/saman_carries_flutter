import 'package:flutter/material.dart';

import '../themes/colors.dart';

class MainTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  const MainTextField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1 / 2,
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldClr,
          isDense: true, // Reduce overall height
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 8.0), // Adjust padding
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                5.0), // Adjust the value to control the border radius
            borderSide: BorderSide.none, // Remove the border line
          ),
        ),
      ),
    );
  }
}

class SuffixMainTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  const SuffixMainTextField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1 / 2,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.textFieldClr,
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 5.0, horizontal: 8.0), // Adjust padding
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide.none,
              ),
              isDense: true,
            ),
          ),
          const Positioned(
            left: 1.0,
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}

class ShopTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final suffixIcon;
  final TextInputType keyboardType;

  const ShopTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1 / 3,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.textField2Clr,
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 5.0, horizontal: 40.0), // Adjust padding
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide.none,
              ),
              isDense: true,
            ),
          ),
          Positioned(
            right: 45,
            child: Text(
              hintText!,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Positioned(
            right: 1.0,
            child: Icon(
              suffixIcon != null ? Icons.arrow_drop_down : null,
              color: Colors.black,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
