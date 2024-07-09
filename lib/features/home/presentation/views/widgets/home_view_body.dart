import 'package:flutter/material.dart';
import 'package:mytodo/features/home/presentation/views/widgets/task_list.dart';
import 'package:mytodo/features/home/presentation/views/widgets/today_task.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: TodayTask()),
        TaskList(),
      ],
    );
  }
}
