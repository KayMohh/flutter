import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              //checkbox
              Checkbox(value: taskComplete, onChanged: onChanged),

              Text(taskName),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
