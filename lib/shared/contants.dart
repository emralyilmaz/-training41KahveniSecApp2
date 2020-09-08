import 'package:flutter/material.dart';

const inputDecoration = InputDecoration(
  hintText: "Email giriniz",
  fillColor: Color.fromRGBO(252, 251, 227, 1),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(252, 251, 227, 1), width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(149, 87, 48, 1), width: 2.0),
  ),
  icon: Icon(
    Icons.email,
    color: Color.fromRGBO(149, 87, 48, 1),
  ),
);
