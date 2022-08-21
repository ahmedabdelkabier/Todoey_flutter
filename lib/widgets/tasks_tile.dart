import 'dart:ffi';

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final void Function(bool?)? checkboxCallback;
  final VoidCallback? onLongPressCallback;
  TasksTile(
      {required this.name,
      required this.isChecked,
      required this.checkboxCallback,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
