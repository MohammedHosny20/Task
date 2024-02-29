class TodoModel {
  final int id, userId;
  final String todo;
  final bool isCompleted;

  TodoModel({
    required this.id,
    required this.userId,
    required this.todo,
    required this.isCompleted,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        id: json['id'],
        userId: json['userId'],
        todo: json['todo'],
        isCompleted: json['completed'],
      );
}
