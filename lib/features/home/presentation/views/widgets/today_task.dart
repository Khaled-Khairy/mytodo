import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mytodo/core/utils/app_router.dart';
import 'package:mytodo/core/utils/functions/get_current_date.dart';
import 'package:mytodo/core/utils/styles.dart';
import 'package:mytodo/core/widgets/custom_button.dart';


class TodayTask extends StatelessWidget {
  const TodayTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Today",
                style: Styles.textStyle26,
              ),
              Text(
                getCurrentDate(),
                style: Styles.textStyle14,
              ),
            ],
          ),
          CustomButton(
            text: 'New Task',
            icon: Icons.add,
            buttonFunction: () {
              GoRouter.of(context).push(AppRouter.kAddTaskView);
            },
          )
        ],
      ),
    );
  }
}
