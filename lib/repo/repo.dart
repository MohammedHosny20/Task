import 'package:dio/dio.dart';
import 'package:task/constants/end_points.dart';
import 'package:task/model/todo_model.dart';

class TodoRepository {
  Future<List<TodoModel>> fetchAllTodo() async {
    Response response = await Dio().get(EndPoints.allTodo);

    if (response.statusCode == 200) {
      return List<TodoModel>.from((response.data['todos'] as List)
          .map((element) => TodoModel.fromJson(element)));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
