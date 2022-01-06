import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  final bool Ischecked;

  final String taskName;

  final Function checkboxcallback;
  final Function longpresscallback;

  Listtile(
      {this.Ischecked,
      this.taskName,
      this.checkboxcallback,
      this.longpresscallback});

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
