// siparişlerin listesinin tutulacağı dosya

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training41kahvenisecapp2/models/order.dart';

class SiparisList extends StatefulWidget {
  @override
  _SiparisListState createState() => _SiparisListState();
}

class _SiparisListState extends State<SiparisList> {
  @override
  Widget build(BuildContext context) {
    // provider ile dağıtılan verinin yakalanması gerekiyor.
    final siparisler = Provider.of<List<Siparis>>(context) ?? [];
    siparisler.forEach((siparis) {
      print(siparis.isim);
      print(siparis.seker);
      print(siparis.koyuluk);
    });
    return Container();
  }
}
