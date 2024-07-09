import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    required this.buttonFunction,
  });

  final String text;
  final IconData? icon;
  final VoidCallback buttonFunction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        buttonFunction();
      },
      style: TextButton.styleFrom(
        backgroundColor: kButtonBackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: kHighLightColor,
                  weight: 5,
                )
              : Container(),
          Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: kHighLightColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
