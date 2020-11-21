import 'package:flutter/material.dart';
import 'package:khati_app/models/task_data.dart';
import 'package:khati_app/widgets/list_tile.dart';
import 'package:khati_app/models/task.dart';
import 'package:provider/provider.dart';

class List extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){

        return ListView.builder(itemBuilder: (context, index){
          return Tile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBox:  (newValue){

                taskData.updateTask(taskData.tasks[index]);

              },
              longPressCallback: (){
                taskData.deleteTask(taskData.tasks[index]);
              },
          );
        },
          itemCount: taskData.taskCount,
        );

      },
    );
  }
}

