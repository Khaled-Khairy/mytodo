import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/styles.dart';

class SelectTaskTime extends StatelessWidget {
  const SelectTaskTime({
    super.key,
    required this.time,
    required this.isFrom,
  });

  final String time;
  final bool isFrom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: kHighLightColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    spreadRadius: 0.1,
                    blurRadius: 10,
                    offset: Offset(-4, -4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      isFrom ? "From : $time" : "To : $time",
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
