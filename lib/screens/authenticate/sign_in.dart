import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 251, 227, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(149, 87, 48, 1),
        elevation: 0, // gölgelik
        title: Text(
          "Giriş Yapınız",
          style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1)),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
            child: Text("Misafir Giriş",
                style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))),
            color: Color.fromRGBO(149, 87, 48, 1),
            onPressed: () {}),
      ),
    );
  }
}
