import 'package:flutter/material.dart';
import 'package:flutter_basics/drawer.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = 'Change my name';
  TextEditingController _nameController = TextEditingController();

  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await 
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('basic App')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: data != null
              ? SingleChildScrollView(child: Card())
              : Center(child: CircularProgressIndicator()),
          // SingleChildScrollView(
          //   child: NameCardWidgit(myText: myText, nameController: _nameController),

          // ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
