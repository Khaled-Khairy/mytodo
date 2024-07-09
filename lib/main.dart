import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/core/utils/app_router.dart';

main() {
  runApp(const MyToDo());
}

class MyToDo extends StatelessWidget {
  const MyToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
              textTheme:
                  GoogleFonts.openSansTextTheme(Theme.of(context).textTheme))
          .copyWith(scaffoldBackgroundColor: kBackgroundColor),
      debugShowCheckedModeBanner: false,
    );
  }
}
