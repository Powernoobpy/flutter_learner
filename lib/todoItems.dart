import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {

  Todo todo;
  bool checked = false;
  String title = "Title";

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Checkbox(value: checked,
          onChanged: (bool value){
            setState(() {
              checked = value;
            });
          }
      ),
      Text(title)
    ],
    );
  }
}

class Todo{
  bool checked;
  String title;

  Todo(this.checked);
}