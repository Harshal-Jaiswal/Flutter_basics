import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  // void checkBoxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}

// TaskCheckBox(
//         checkboxState: isChecked,
//         toggleCheckboxText: (bool checkboxState) {
//           setState(() {
//             isChecked = checkboxState;
//           });
//         },
//       ),

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox({this.checkboxState, this.toggleCheckboxText});

//   final bool checkboxState;
//   final Function toggleCheckboxText;

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       onChanged: toggleCheckboxText,
//       value: checkboxState,
//     );
//   }
// }
