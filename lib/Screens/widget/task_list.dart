import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/Moudle/task_data.dart';
import 'package:to_do_app/Moudle/task_moudle.dart';
import 'package:to_do_app/Screens/widget/task_tile.dart';

class Listview extends StatefulWidget {
  final List<Task> tasks;

  const Listview(this.tasks);

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return Listtile(
                  Ischecked: task.isDone,
                  taskName: task.theTask,
                  checkboxcallback: (checkState) {
                    taskData.Updatetask(task);
                  },
                  longpresscallback: () {
                    taskData.deletTask(task);
                  });
            });
      },
    );
  }
}
