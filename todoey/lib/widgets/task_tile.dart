import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is task'),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
    );
  }
}
