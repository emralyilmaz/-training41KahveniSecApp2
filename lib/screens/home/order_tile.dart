import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/models/order.dart';

class SiparisTile extends StatelessWidget {
  final Siparis siparis;
  SiparisTile({this.siparis});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[siparis.koyuluk],
          ),
          title: Text(siparis.isim,
              style: TextStyle(color: Color.fromRGBO(149, 87, 48, 1))),
          subtitle: Text(
            "${siparis.seker} adet şeker",
            style: TextStyle(color: Color.fromRGBO(214, 160, 124, 1)),
          ),
        ),
      ),
    );
  }
}
