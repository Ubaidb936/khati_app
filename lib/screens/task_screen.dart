import 'package:flutter/material.dart';
import 'package:khati_app/models/task_data.dart';
import 'package:khati_app/widgets/list_view.dart';
import 'package:khati_app/widgets/add_task.dart';
import 'package:khati_app/models/task.dart';
import 'package:provider/provider.dart';
class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add
        ),
        onPressed: (){

          showModalBottomSheet(context: context, builder: (context) => AddTask());

        },
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      icon: Icon(
                          Icons.list,
                          size: 30,
                          color:  Colors.lightBlueAccent
                      ),
                      onPressed: null,

                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                      height: 20
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                    ),

                  ),

                  Text(
                    '${Provider.of<TaskData>(context).taskCount} tasks',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),

                ]
            ),
          ),
          Expanded(
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: List(),
            ),
          )

        ]
      )
    );
  }
}



