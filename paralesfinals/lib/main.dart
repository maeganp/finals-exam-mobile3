import 'package:flutter/material.dart';

import 'app_router.dart';
import 'app_themes.dart';
import 'blocs/bloc_exports.dart';
import 'models/task.dart';
import 'screens/tabs_screen.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      MyApp(appRouter: AppRouter()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TasksBloc()
          ..add(AddTask(
            task: Task(title: 'Task1', description: ''),
          )),
        child: MaterialApp(
          title: 'BloC Tasks App',
          theme: AppThemes.appThemeData[AppTheme.lightMode],
          home: const TabsScreen(),
          onGenerateRoute: appRouter.onGenerateRoute,
        ));
  }
}
