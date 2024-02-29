part of 'todo_bloc.dart';
abstract class TodoEvent {
  const TodoEvent();
}

class FetchAllTodoEvent extends TodoEvent {}
