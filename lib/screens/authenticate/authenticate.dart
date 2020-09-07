import 'package:flutter/material.dart';
import 'package:training41kahvenisecapp2/screens/authenticate/register(uyeolma).dart';
import 'package:training41kahvenisecapp2/screens/authenticate/sign_in.dart';

class Authenicate extends StatefulWidget {
  @override
  _AuthenicateState createState() => _AuthenicateState();
}

class _AuthenicateState extends State<Authenicate> {
  bool girisYap = true;
  void toggleSayfa() {
    setState(() => girisYap = !girisYap); // true ise false, false ise true yap.
  }

  @override
  Widget build(BuildContext context) {
    if (girisYap == true) {
      return SignIn(
        toggleSayfa: toggleSayfa,
      );
    } else {
      return Register(
        toggleSayfa: toggleSayfa,
      );
    }
  }
}
