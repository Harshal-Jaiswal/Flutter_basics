import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _userNameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Card(
                        child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _userNameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: ,
                          hintText: 'Enter email', labelText: 'username'),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter password', labelText: 'password'),
                    ),
                    RaisedButton(
                     onPressed: () {  },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
