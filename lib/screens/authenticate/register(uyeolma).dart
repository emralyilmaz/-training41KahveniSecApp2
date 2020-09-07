import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleSayfa;
  Register({this.toggleSayfa});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _authService =
      AuthService(); // auth.dart sayfasında classa erişim sağlandı.

  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>(); //text formfieldları kontrol için

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 251, 227, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(149, 87, 48, 1),
        elevation: 0, // gölgelik
        title: Text(
          "Üye olunuz",
          style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1)),
        ),
        centerTitle: true,
        actions: [
          FlatButton.icon(
              onPressed: () {
                widget.toggleSayfa();
              },
              icon: Icon(Icons.person, color: Color.fromRGBO(252, 251, 227, 1)),
              label: Text("Giriş Yap",
                  style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))))
        ],
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Lütfen mail adresinizi giriniz" : null,
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) => val.length < 5
                          ? "Parola en az 6 karakerterden oluşturulmalı"
                          : null,
                      obscureText: true,
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                        color: Color.fromRGBO(149, 87, 48, 1),
                        child: Text(
                          "Üye ol",
                          style: TextStyle(
                              color: Color.fromRGBO(252, 251, 227, 1)),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            print("$email ve $password");
                          }
                        })
                  ],
                ))),
      ),
    );
  }
}
