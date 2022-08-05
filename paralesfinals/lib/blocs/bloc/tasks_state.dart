part of 'tasks_bloc.dart';

// import 'package:equatable/equatable.dart';
// import 'package:paralesfinals/models/task.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  const TasksState({
    this.allTasks = const <Task>[],
  });

  @override
  List<Object?> get props => [allTasks];
}
