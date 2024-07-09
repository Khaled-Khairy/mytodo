import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        cursorColor: kHighLightColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.textStyle16.copyWith(color: kSecondaryTextColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: kHighLightColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kSecondaryTextColor)),
        ),
      ),
    );
  }
}
