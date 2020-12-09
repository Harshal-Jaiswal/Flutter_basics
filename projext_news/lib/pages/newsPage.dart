import 'package:flutter/material.dart';
import 'package:projext_news/pages/drawer.dart';

class NewsPage extends StatefulWidget {
  static const String routeName = '/NewsPage';

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News App'),
        ),
        body: GestureDetector(
          onTap: () {
            print('MyButton was tapped!');
          },
          child: Container(
            height: 36.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.lightGreen[500],
            ),
            child: Center(
              child: Text('Engage'),
            ),
          ),
        ),
        drawer: DrawerNav());
  }
}
