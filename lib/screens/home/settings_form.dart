import 'package:flutter/material.dart';

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
        children: [Text("Ayarları Güncelleyebilirsiniz.")],
      ),
    );
  }
}
