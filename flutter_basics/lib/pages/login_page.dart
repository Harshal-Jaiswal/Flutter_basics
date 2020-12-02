import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/Login';
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
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/p-sci.png',
          // fit: BoxFit.cover,
          color: Colors.black.withOpacity(.4),
          colorBlendMode: BlendMode.darken,
        ),
        Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _userNameController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (s) {},
                          decoration: InputDecoration(
                              hintText: 'Enter email', labelText: 'username'),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          validator: (s) {},
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Enter password',
                              labelText: 'password'),
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                          onPressed: () {
                            // formKey.currentState.validate();

                            Navigator.pushNamed(context, Homepage.routeName);
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Homepage()));
                          },
                          child: Text('Sign In'),
                          color: Colors.orange,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
