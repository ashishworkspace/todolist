import 'package:flutter/material.dart';

class BottomPopUp extends StatelessWidget {
  final Function? passFunctionCallBackToHomeScreen;
  BottomPopUp(this.passFunctionCallBackToHomeScreen);
  @override
  Widget build(BuildContext context) {
    String? getUserInput;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                onChanged: (value) {
                  getUserInput = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabled: true,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    passFunctionCallBackToHomeScreen!(getUserInput);
                  },
                  child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
