import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Moudle/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addTaskCallBack;

  @override
  AddTaskScreen(this.addTaskCallBack);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  Widget build(BuildContext context) {
    final newTaskTitle = TextEditingController();
    return Container(
      color: Colors.black54,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.visiblePassword,
              autofocus: true,
              textAlign: TextAlign.center,
              controller: newTaskTitle,
            ),
            InkWell(
              onTap: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle.text);
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.amber,
                child: Center(
                    child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
