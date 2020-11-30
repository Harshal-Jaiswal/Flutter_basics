
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('hj'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1533512930330-4ac257c86793?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGJveXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
                ),
                accountEmail: Text('hj@hj.com')),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('HJ'),
              subtitle: Text('dev'),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('HJ@hj.com'),
              subtitle: Text('dev'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      );
  }
}