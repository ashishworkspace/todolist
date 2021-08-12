import 'package:flutter/material.dart';
import 'package:todolist/custom/task.dart';
import 'package:todolist/custom/task_list.dart';
import 'package:todolist/screens/bottom_popup.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 40,
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.lightBlueAccent,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "TODO List",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${tasks.length} Tasks",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TaskList(tasks),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => BottomPopUp((value) {
                    setState(() {
                      tasks.add(Task(text: value));
                    });
                    Navigator.pop(context);
                  }));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
