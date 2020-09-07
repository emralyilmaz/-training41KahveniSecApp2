// yönlendirme işlemi içib gerekli olan sayfa
// firebaseden gelecek olan verilerin sayfalara göre yönlendirilmesinin yapılması sağlanıyor.

import 'package:flutter/material.dart';
// import 'package:training41kahvenisecapp2/screens/authenticate/authenticate.dart';
import 'package:training41kahvenisecapp2/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
