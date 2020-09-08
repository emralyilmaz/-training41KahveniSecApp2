import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training41kahvenisecapp2/screens/home/order_list.dart';
import 'package:training41kahvenisecapp2/services/auth.dart';
import 'package:training41kahvenisecapp2/services/database.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  // artık _auth ile içerisindeki metodlara erişim sağlanılabilir.
  // burada firebaseden gelen kullanıcı bilgisi yok
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().siparisler,
// artık valu bilgisine baska bir dosyadan erişilebilir hale getirildi.
      child: Scaffold(
        backgroundColor: Color.fromRGBO(252, 251, 227, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(149, 87, 48, 1),
          title: Text(
            "Anasayfa",
            style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1)),
          ),
          actions: [
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person_outline,
                    color: Color.fromRGBO(252, 251, 227, 1)),
                label: Text("Çıkış",
                    style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))))
          ],
        ),
        body: SiparisList(),
      ),
    );
  }
}
