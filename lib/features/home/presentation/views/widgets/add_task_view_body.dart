import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/widgets/custom_button.dart';
import 'package:mytodo/core/widgets/custom_container.dart';
import 'package:mytodo/features/home/presentation/views/widgets/custom_text_field.dart';

import 'select_task_time.dart';

class AddTaskViewBody extends StatelessWidget {
  const AddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: CustomContainer(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(
                hintText: "Task",
              ),
              const CustomTextField(
                hintText: "Task Description",
              ),
              const Divider(
                color: kSecondaryTextColor,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectTaskTime(
                    time: "10:00 AM",
                    isFrom: true,
                  ),
                  SelectTaskTime(
                    time: "12:00 AM",
                    isFrom: false,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomButton(text: "Submit", buttonFunction: (){}),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
