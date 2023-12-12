import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    String? newTaskTitle ;
    
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        )
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
                 // print('newTaskTitle updated: $newTaskTitle');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () {
                 Provider.of<TaskData>(context, listen: false).addTask(
                     newTaskTitle??"");
                 Navigator.pop(context);
                 },
              child: Text('Add'
              ),

            ),
    ],),
    
    
    )
    );
  }
}




// onPressed: () {
//   if (newTaskTitle.trim().isNotEmpty) {
//     addTaskCallback(newTaskTitle);
//   }
// },