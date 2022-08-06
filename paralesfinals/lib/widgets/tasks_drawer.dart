import 'package:paralesfinals/blocs/bloc_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc/tasks_bloc.dart';
import '../screens/recycle_bin_screen.dart';
import '../screens/tabs_screen.dart';
import '../test_data.dart';

class TasksDrawer extends StatelessWidget {
  const TasksDrawer({Key? key}) : super(key: key);

  _switchToDarkTheme(BuildContext context, bool isDarkTheme) {
    if (isDarkTheme) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              child: Text(
                'Task Drawer',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.folder_special),
              title: const Text('My Tasks'),
              trailing: Text(
                '${TestData.pendingTasks.length} | ${TestData.completedTasks.length}',
              ),
              onTap: () => Navigator.pushReplacementNamed(
                context,
                TabsScreen.path,
              ),
            ),
            BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) {
                return GestureDetector(
                  child: ListTile(
                    leading: const Icon(Icons.folder_special),
                    title: const Text('My Tasks'),
                    trailing: Text(
                      '${state.pendingTasks.length} | ${state.completedTasks.length}',
                    ),
                    onTap: () => Navigator.pushReplacementNamed(
                      context,
                      TabsScreen.path,
                    ),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Recycle Bin'),
              trailing: Text('${TestData.removedTasks.length}'),
              onTap: () => Navigator.pushReplacementNamed(
                context,
                RecycleBinScreen.path,
              ),
            ),
            const Divider(),
            const Expanded(child: SizedBox()),
            ListTile(
              leading: Switch(
                value: TestData.isDarkTheme,
                onChanged: (newValue) => _switchToDarkTheme(context, newValue),
              ),
              title: const Text('Switch to Dark Theme'),
              onTap: () => _switchToDarkTheme(context, !TestData.isDarkTheme),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../blocs/bloc_exports.dart';
// import '../screens/recycle_bin_screen.dart';
// import '../screens/tabs_screen.dart';
// import '../test_data.dart';

// class TasksDrawer extends StatelessWidget {
//   const TasksDrawer({Key? key}) : super(key: key);

//   _switchToDarkTheme(BuildContext context, bool isDarkTheme) {
//     if (isDarkTheme) {
//     } else {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
//               child: Text(
//                 'Task Drawer',
//                 style: Theme.of(context).textTheme.headline5,
//               ),
//             ),
//             BlocBuilder<TasksBloc, TasksState>(
//               builder: (context, state) {
//                 return GestureDetector(
//                   child: ListTile(
//                     leading: const Icon(Icons.folder_special),
//                     title: const Text('My Tasks'),
//                     trailing: Text(
//                       '${state.pendingTasks.length} | ${state.completedTasks.length}',
//                     ),
//                     onTap: () => Navigator.pushReplacementNamed(
//                       context,
//                       TabsScreen.path,
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const Divider(),
//             BlocBuilder<TasksBloc, TasksState>(builder: (context, state) {
//               return GestureDetector(
//                 child: ListTile(
//                   leading: const Icon(Icons.delete),
//                   title: const Text('Recycle Bin'),
//                   trailing: Text('${state.removedTasks.length}'),
//                   onTap: () => Navigator.pushReplacementNamed(
//                     context,
//                     RecycleBinScreen.path,
//                   ),
//                 ),
//               );
//             }),
//             const Divider(),
//             const Expanded(child: SizedBox()),
//             BlocBuilder<SwitchBloc, SwitchState>(builder: (context, state) {
//               return ListTile(
//                 leading: Switch(
//                     value: state.switchValue,
//                     onChanged: (newValue) {
//                       newValue
//                           ? context.read<SwitchBloc>().add(SwitchOnEvent())
//                           : context.read<SwitchBloc>().add(SwitchOffEvent());
//                     }),
//                 title: const Text('Switch to Dark Theme'),
//                 onTap: () => _switchToDarkTheme(context, !TestData.isDarkTheme),
//               );
//             }),
//             const SizedBox(height: 10),
//           ],
//         ),
//       ),
//     );
//   }
// }

////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';

// import '../screens/recycle_bin_screen.dart';
// import '../screens/tabs_screen.dart';
// import '../test_data.dart';

// class TasksDrawer extends StatelessWidget {
//   const TasksDrawer({Key? key}) : super(key: key);

//   _switchToDarkTheme(BuildContext context, bool isDarkTheme) {
//     if (isDarkTheme) {
//     } else {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
//               child: Text(
//                 'Task Drawer',
//                 style: Theme.of(context).textTheme.headline5,
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.folder_special),
//               title: const Text('My Tasks'),
//               trailing: Text(
//                 '${TestData.pendingTasks.length} | ${TestData.completedTasks.length}',
//               ),
//               onTap: () => Navigator.pushReplacementNamed(
//                 context,
//                 TabsScreen.path,
//               ),
//             ),
//             const Divider(),
//             ListTile(
//               leading: const Icon(Icons.delete),
//               title: const Text('Recycle Bin'),
//               trailing: Text('${TestData.removedTasks.length}'),
//               onTap: () => Navigator.pushReplacementNamed(
//                 context,
//                 RecycleBinScreen.path,
//               ),
//             ),
//             const Divider(),
//             const Expanded(child: SizedBox()),
//             ListTile(
//               leading: Switch(
//                 value: TestData.isDarkTheme,
//                 onChanged: (newValue) => _switchToDarkTheme(context, newValue),
//               ),
//               title: const Text('Switch to Dark Theme'),
//               onTap: () => _switchToDarkTheme(context, !TestData.isDarkTheme),
//             ),
//             const SizedBox(height: 10),
//           ],
//         ),
//       ),
//     );
//   }
// }

