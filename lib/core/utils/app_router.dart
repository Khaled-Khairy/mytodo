import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/add_task_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter{
  static const kHomeView = '/';
  static const kAddTaskView = '/addTask';
  static final router = GoRouter(
    routes:[
      GoRoute(path: kHomeView,builder: (context,state)=> const HomeView()),
      GoRoute(path: kAddTaskView,builder: (context,state)=> const AddTaskView()),
    ]
  );
}