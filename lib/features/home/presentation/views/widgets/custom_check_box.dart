import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  const CustomCheckBox({
    super.key, required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? kHighLightColor : Colors.transparent,
          border: Border.all(
            width: 2.0,
            color: value ? kHighLightColor : kSecondaryTextColor,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 20.0,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
