import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text('News Category', 
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                 ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              ListTile(
                title: Text('Top Headlines'),
                onTap: () {
                  
                },
              ),
              
            ],
          ),
        );
  }
}