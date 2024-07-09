import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/styles.dart';
import 'package:mytodo/core/widgets/custom_container.dart';

import 'custom_check_box.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: CustomContainer(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Create Wireframe",
                          style: Styles.textStyle18,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "This is the description",
                          style: Styles.textStyle14
                              .copyWith(color: kSecondaryTextColor),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const CustomCheckBox(
                    value: true,
                  ),
                ],
              ),
              const Divider(
                color: kTaskDurationColor,
              ),
              const Text(
                "10:00 PM - 11:45 PM",
                style: Styles.textStyle14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
