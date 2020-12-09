import 'package:flutter/material.dart';
import 'package:projext_news/pages/newsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsPage(),
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
    );
  }
}
