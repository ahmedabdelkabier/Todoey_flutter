import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class Data extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: "buy milk"),
    Tasks(name: "buy eggs"),
    Tasks(name: "buy bread"),
  ];

  //it prevent from add tasks any where and to access the tasks we created a getter to access it but
  //with using of UnmodifiableListView that allows to only read not write.
  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taksTitle) {
    _tasks.add(Tasks(name: taksTitle));
    notifyListeners();
  }

  int get dataLength {
    return _tasks.length;
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
