import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/services/auth.dart';
import 'package:training41kahvenisecapp2/shared/contants.dart';
import 'package:training41kahvenisecapp2/shared/loading.dart';

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

  String error = "";
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                    icon: Icon(Icons.person,
                        color: Color.fromRGBO(252, 251, 227, 1)),
                    label: Text("Giriş Yap",
                        style:
                            TextStyle(color: Color.fromRGBO(252, 251, 227, 1))))
              ],
            ),
            body: Center(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (val) => val.isEmpty
                                ? "Lütfen mail adresinizi giriniz"
                                : null,
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                            decoration: inputDecoration,
                            cursorColor: Color.fromRGBO(149, 87, 48, 1),
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
                            decoration: inputDecoration.copyWith(
                                hintText: "Parola giriniz",
                                icon: Icon(Icons.vpn_key,
                                    color: Color.fromRGBO(149, 87, 48, 1))),
                            cursorColor: Color.fromRGBO(149, 87, 48, 1),
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
                              onPressed: () async {
                                setState(() {
                                  loading = true;
                                });
                                if (_formKey.currentState.validate()) {
                                  //print("$email ve $password");
                                  dynamic sonuc = await _authService.register(
                                      email, password);
                                  if (sonuc == null) {
                                    setState(() {
                                      error =
                                          "Lütfen geçerli bir mail adresi ya da parola giriniz.";
                                      loading = false;
                                    });
                                  }
                                }
                              }),
                          SizedBox(height: 15),
                          Text(error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 15)),
                        ],
                      ))),
            ),
          );
  }
}
