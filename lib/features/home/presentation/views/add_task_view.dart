import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/styles.dart';
import 'package:mytodo/features/home/presentation/views/widgets/add_task_view_body.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const CircleAvatar(
              backgroundColor: kHighLightColor,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text(
          "Add ToDo",
          style: Styles.textStyle20,
        ),
        centerTitle: true,
      ),
      body: const AddTaskViewBody(),
    );
  }
}
