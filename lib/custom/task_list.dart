import 'package:flutter/material.dart';
import 'package:todolist/custom/task.dart';
import 'package:todolist/custom/task_listTile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, item) {
        return TaskListTile(
          userInput: widget.tasks[item].text,
          ischecked: widget.tasks[item].isChecked,
          toggleCheckboxState: (bool? toggleValue) {
            setState(() {
              widget.tasks[item].reverseisChecked();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
