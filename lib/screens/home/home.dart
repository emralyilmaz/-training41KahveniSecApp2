import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 251, 227, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(149, 87, 48, 1),
          title: Text(
            "Anasayfa",
            style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1)),
          ),
          actions: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person_outline,
                    color: Color.fromRGBO(252, 251, 227, 1)),
                label: Text("Çıkış",
                    style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))))
          ],
        ));
  }
}
