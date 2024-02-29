import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task/model/todo_model.dart';
import 'package:task/repo/repo.dart';
part 'todo_state.dart';
part 'todo_event.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<FetchAllTodoEvent>(_fetchAllTodo);
  }

  Future<void> _fetchAllTodo(
    FetchAllTodoEvent event,
    Emitter<TodoState> emit,
  ) async {
    try {
      emit(TodoLoading());
      final List<TodoModel> result = await TodoRepository().fetchAllTodo();
      emit(TodoLoaded(result));
    } catch (error) {
      emit(TodoError('$error'));
    }
  }
}
