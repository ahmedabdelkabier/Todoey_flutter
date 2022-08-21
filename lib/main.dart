import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'screens/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (BuildContext context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
