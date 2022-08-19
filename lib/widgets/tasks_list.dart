import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Tasks> tasks = [
    Tasks(name: "buy milk"),
    Tasks(name: "buy eggs"),
    Tasks(name: "buy bread"),
    Tasks(name: "paly football"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          name: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].isDone = checkboxState!;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
