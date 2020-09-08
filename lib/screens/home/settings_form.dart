import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/shared/contants.dart';

class SettingForm extends StatefulWidget {
  @override
  _SettingFormState createState() => _SettingFormState();
}

class _SettingFormState extends State<SettingForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sekerler = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10"
  ];

  String currentIsim; //form içerisinde anlık olarak tutulması için
  String currentSeker; //form içerisinde anlık olarak tutulması için
  int currentKoyuluk; //form içerisinde anlık olarak tutulması için

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text("Ayarları Güncelleyebilirsiniz",
              style: TextStyle(color: Color.fromRGBO(149, 87, 48, 1))),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: inputDecoration.copyWith(
              hintText: "isim",
              hintStyle: TextStyle(color: Color.fromRGBO(149, 87, 48, 1)),
              icon: Icon(Icons.person, color: Color.fromRGBO(149, 87, 48, 1)),
            ),
            validator: (val) => val.isEmpty ? "Lütfen isim giriniz" : null,
            onChanged: (val) => setState(() => currentIsim = val),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            items: sekerler.map((seker) {
              return DropdownMenuItem(
                value: seker,
                child: Text(
                  "$seker şeker",
                  style: TextStyle(color: Color.fromRGBO(149, 87, 48, 1)),
                ),
              );
            }).toList(),
            onChanged: (val) => setState(() => currentSeker = val),
            decoration: inputDecoration.copyWith(
                icon: Icon(Icons.format_color_fill,
                    color: Color.fromRGBO(149, 87, 48, 1))),
            value: currentSeker ?? "0",
          ),
          Slider(
            value: (currentKoyuluk ?? 100).toDouble(),
            min: 100,
            max: 900,
            divisions: 8,
            onChanged: (val) => setState(() => currentKoyuluk = val.round()),
            activeColor: Colors.brown[currentKoyuluk ?? 100],
            inactiveColor: Colors.brown[currentKoyuluk ?? 100],
          ),
          RaisedButton(
              color: Color.fromRGBO(149, 87, 48, 1),
              child: Text("Güncelle",
                  style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))),
              onPressed: () async {
                print(currentIsim);
                print(currentSeker);
                print(currentKoyuluk);
              })
        ],
      ),
    );
  }
}
