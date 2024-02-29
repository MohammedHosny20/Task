
import 'package:flutter/material.dart';
import 'package:task/model/todo_model.dart';

class TodoCardWidget extends StatelessWidget {
  const TodoCardWidget(
      {super.key, required this.model, this.index = 0, this.onTap});
  final TodoModel model;
  final int index;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30,
        child: Text(
          '${index + 1}',
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      title: Text(
        model.todo,
        style: const TextStyle(height: 1.10, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        '${model.isCompleted}',
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
