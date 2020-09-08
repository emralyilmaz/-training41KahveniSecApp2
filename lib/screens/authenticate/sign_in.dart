import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleSayfa;
  SignIn({this.toggleSayfa});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService =
      AuthService(); // auth.dart sayfasında classa erişim sağlandı.

  String email = "";
  String password = "";

  String error = "";

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
        actions: [
          FlatButton.icon(
              onPressed: () {
                widget.toggleSayfa();
              },
              icon: Icon(Icons.person_add,
                  color: Color.fromRGBO(252, 251, 227, 1)),
              label: Text("Üye Ol",
                  style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))))
        ],
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
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
                      "Giriş Yap",
                      style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1)),
                    ),
                    onPressed: () async {
                      dynamic sonuc =
                          await _authService.signIn(email, password);
                      if (sonuc == null) {
                        setState(() {
                          error = "Giriş Başarısız.";
                        });
                      }
                      // print("$email ve $password");
                    }),
                SizedBox(height: 15),
                Text(error, style: TextStyle(color: Colors.red, fontSize: 15))
              ],
            ))),
      ),
    );
  }
}
