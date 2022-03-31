import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  final bool Ischecked;

  final String taskName;

  final Function(bool?) checkboxcallback;
  final VoidCallback longpresscallback;

  Listtile(
      {required this.Ischecked,
      required this.taskName,
      required this.checkboxcallback,
      required this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(taskName,
          style: TextStyle(
              fontSize: 18,
              decoration: Ischecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.amber,
        value: Ischecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
