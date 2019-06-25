import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  // Initially password is obscure
  bool _obscureText = true;
  String email;
  String password;

  final formKey = GlobalKey<FormState>();

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 40.0)),
            raisedbutton()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email Address',
          hintText: 'you@example.com',
        ),
        validator: (String value) {
          if (!value.contains('@')) return 'please enter a valid email';
        },
        onSaved: (String value) {
          email = value;
        });
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: 'password',
          hintText: 'password',
        ),
        validator: (String value) {
          if (value.length < 4) return 'please enter a valid email';
        },
        onSaved: (String value) {
          password = value;
        });
  }

  Widget raisedbutton() {
    return RaisedButton(
      child: Text("submit"),
      color: Colors.redAccent,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('this is email $email');
          print(' this is password $password');
        }

        print("raised button");
      },
    );
  }
}
