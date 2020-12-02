
import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/home_page.dart';
import 'package:flutter_basics/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginPage(),
        theme: ThemeData(
          primaryColor: Colors.purple,
        ),
        routes: {
          
          LoginPage.routeName : (context)=> LoginPage(),
          Homepage.routeName : (context)=> Homepage(),
        },     
      );
  }
}

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {

//   var myText ='Change my name';
//   TextEditingController _nameController = TextEditingController();

//   @override
//   void initState(){
//     super.initState()
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(title: Text('basic App')),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Card(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/p-sci.png',
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     myText,
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: TextField(
//                       controller: _nameController,
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           hintText: 'input some text',
//                           labelText: 'Name'),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(0),
//           children: [
//             UserAccountsDrawerHeader(
//                 accountName: Text('hj'),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://images.unsplash.com/photo-1533512930330-4ac257c86793?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGJveXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
//                 ),
//                 accountEmail: Text('hj@hj.com')),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('HJ'),
//               subtitle: Text('dev'),
//               trailing: Icon(Icons.edit),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.email),
//               title: Text('HJ@hj.com'),
//               subtitle: Text('dev'),
//               trailing: Icon(Icons.edit),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           myText = _nameController.text;
//           setState(() {

//           });
//         },
//         child: Icon(Icons.save),
//       ),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('basic App')),
//       body: Container(

//         color: Colors.teal,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(8),
//             width: 100,
//             height: 100,
//             color: Colors.red,
//             alignment: Alignment.center,
//           ),
//           Container(
//             padding: const EdgeInsets.all(8),
//             width: 100,
//             height: 100,
//             color: Colors.yellow,
//             alignment: Alignment.center,
//           ),
//           Container(
//             padding: const EdgeInsets.all(8),
//             width: 100,
//             height: 100,
//             color: Colors.green,
//             alignment: Alignment.center,
//           ),
//         ],),
//       ),
//     );
//   }
// }
