import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/screens/add_tasks_screen.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    final int tasksNumber = Provider.of<Data>(context).dataLength;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTasksScreen(),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '$tasksNumber Tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: kCardDecoration,
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
