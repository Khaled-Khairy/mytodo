import 'package:flutter/material.dart';
import 'package:mytodo/features/home/presentation/views/widgets/custom_tab_bar.dart';
import 'package:mytodo/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomTabBar(),
        body: TabBarView(children: [
          const HomeViewBody(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text("data"),
          ),
        ]),
      ),
    );
  }
}