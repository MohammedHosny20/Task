import 'package:flutter/material.dart';
import 'package:task/model/todo_model.dart';
import 'package:task/widget/todo_card_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.model});
  final TodoModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detail",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: TodoCardWidget(model: model),
      ),
    );
  }
}
