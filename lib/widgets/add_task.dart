import 'package:flutter/material.dart';
import 'package:khati_app/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:khati_app/models/task.dart';
class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String textTitle;
    return Container(

      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.lightBlueAccent
                  ),
                      ),
            ),
            TextField(

             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (value){
               textTitle = value;
             },

            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
                onPressed: (){

                  Provider.of<TaskData>(context).addTask(textTitle);

                  Navigator.pop(context);

                },
                color: Colors.blue,
                child: Text(
                  'Add'

                )
            )
          ],
        ),
      ),
    );
  }
}
