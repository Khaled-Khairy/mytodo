import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/styles.dart';



class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: const TabBar(
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.black,
        labelStyle: Styles.textStyle20,
        unselectedLabelColor: kSecondaryTextColor,
        splashFactory: NoSplash.splashFactory,
        tabs: [
          Tab(
            child: Text("ToDo"),
          ),
          Tab(
            child: Text("Incomplete"),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}