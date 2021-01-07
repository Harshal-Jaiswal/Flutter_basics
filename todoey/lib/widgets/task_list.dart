import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
//   @override
//   _TaskListState createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
  // List<Task> tasks = [
  //   Task(name: 'buy milk'),
  //   Task(name: 'buy eggs'),
  //   Task(name: 'buy bread'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return (ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              // taskTitle: widget.tasks[index].name,
              // isChecked: widget.tasks[index].isDone,
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleIsDone();
                // });
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        ));
      },
      // child: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return TaskTile(
      //         // taskTitle: widget.tasks[index].name,
      //         // isChecked: widget.tasks[index].isDone,
      //         taskTitle: Provider.of<TaskData>(context).tasks[index].name,
      //         isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
      //         checkboxCallback: (bool checkboxState) {
      //           // setState(() {
      //           //   widget.tasks[index].toggleIsDone();
      //           // });
      //         });
      //   },
      //   itemCount: Provider.of<TaskData>(context).tasks.length,
      // ),
    );
  }
}
