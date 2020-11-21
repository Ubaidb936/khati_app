import 'package:flutter/material.dart';

class Tile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkBox;
  final Function longPressCallback;
  Tile({this.isChecked, this.taskTitle, this.checkBox, this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallback ,
      title: Text(

          taskTitle,
          style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null)

      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBox
      ),
    );
  }
}




