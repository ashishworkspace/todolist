import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String? userInput;
  final bool? ischecked;
  final Function(bool?)? toggleCheckboxState;
  TaskListTile({this.userInput, this.ischecked, this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          userInput!,
          style: TextStyle(
              decoration: ischecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: toggleCheckboxState,
          value: ischecked!,
        ));
  }
}
