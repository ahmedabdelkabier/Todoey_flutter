import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      children: <Widget>[
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
