import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

// ignore: use_key_in_widget_constructors
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.tasks[index];
            return TasksTile(
              name: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                tasksData.updateTask(task);
              },
              onLongPressCallback: () {
                tasksData.deletTask(task);
              },
            );
          },
          itemCount: tasksData.dataLength,
        );
      },
    );
  }
}
