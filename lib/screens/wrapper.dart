// yönlendirme işlemi içib gerekli olan sayfa
// firebaseden gelecek olan verilerin sayfalara göre yönlendirilmesinin yapılması sağlanıyor.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training41kahvenisecapp2/models/user.dart';
import 'package:training41kahvenisecapp2/screens/authenticate/authenticate.dart';

import 'home/home.dart';
// import 'package:training41kahvenisecapp2/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Kullanici>(
        context); // value değeri user içerisine aktarıldı.
    print(user);
    if (user == null) {
      return Authenicate(); // kuulanıcı yoksa bu sayfaya
    } else {
      return Home(); // kullanıcı varsa bu sayfaya yönleniyor.
    }
  }
}
