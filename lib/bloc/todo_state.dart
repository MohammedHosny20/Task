part of 'todo_bloc.dart';

abstract class TodoState {
  const TodoState();
}

class TodoInitial extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<TodoModel> result;
  const TodoLoaded(this.result);
}

class TodoError extends TodoState {
  final String message;
  const TodoError(this.message);
}
