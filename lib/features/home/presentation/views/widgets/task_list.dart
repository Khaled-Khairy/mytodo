import 'package:flutter/material.dart';
import 'package:mytodo/features/home/presentation/views/widgets/task_list_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const TaskListItem();
        },
        childCount: 5,
      ),
    );
  }
}
