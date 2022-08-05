part of 'tasks_bloc.dart';

// import 'package:equatable/equatable.dart';
// import 'package:paralesfinals/models/task.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  final List<Task> pendingTasks;
  final List<Task> completedTasks;
  final List<Task> favoriteTasks;
  final List<Task> removedTasks;

  const TasksState({
    this.allTasks = const <Task>[],
    this.pendingTasks = const <Task>[],
    this.completedTasks = const <Task>[],
    this.favoriteTasks = const <Task>[],
    this.removedTasks = const <Task>[],
  });

  @override
  List<Object?> get props => [allTasks];

  Map<String, dynamic> toMap() {
    return {
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
      'pendingTasks': allTasks.map((x) => x.toMap()).toList(),
      'completedTasks': allTasks.map((x) => x.toMap()).toList(),
      'favoriteTasks': allTasks.map((x) => x.toMap()).toList(),
      'removedTasks': allTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(
      allTasks: List<Task>.from(map['allTasks']?.map((x) => Task.fromMap(x))),
      pendingTasks:
          List<Task>.from(map['pendingTasks']?.map((x) => Task.fromMap(x))),
      completedTasks:
          List<Task>.from(map['completedTasks']?.map((x) => Task.fromMap(x))),
      favoriteTasks:
          List<Task>.from(map['favoriteTasks']?.map((x) => Task.fromMap(x))),
      removedTasks:
          List<Task>.from(map['allTasks']?.map((x) => Task.fromMap(x))),
    );
  }
}
