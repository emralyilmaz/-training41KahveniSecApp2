import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/shared/contants.dart';

class SettingForm extends StatefulWidget {
  @override
  _SettingFormState createState() => _SettingFormState();
}

class _SettingFormState extends State<SettingForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sekerler = ["0", "1", "2", "3", "4", "5", "6"];

  String currentIsim; //form içerisinde anlık olarak tutulması için
  String currentSeker; //form içerisinde anlık olarak tutulması için
  int currentKoyuluk; //form içerisinde anlık olarak tutulması için

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text("Ayarları Güncelleyebilirsiniz."),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: inputDecoration.copyWith(
              hintText: "isim",
              icon: Icon(Icons.person, color: Color.fromRGBO(149, 87, 48, 1)),
            ),
            validator: (val) => val.isEmpty ? "Lütfen isim giriniz" : null,
            onChanged: (val) => setState(() => currentIsim = val),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
              color: Color.fromRGBO(149, 87, 48, 1),
              child: Text("Güncelle",
                  style: TextStyle(color: Color.fromRGBO(252, 251, 227, 1))),
              onPressed: () async {
                print(currentIsim);
              })
        ],
      ),
    );
  }
}
