import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training41kahvenisecapp2/models/user.dart';
import 'package:training41kahvenisecapp2/screens/wrapper.dart';
import 'package:training41kahvenisecapp2/services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Kullanici>.value(
      value: AuthService().user,
      // kullanıcıda bir değişiklik olup olmadığı takip edilecek
      // kullanıcı uygulamayı kullanırken sign out olursa signOut işlemi gerçekleştirilip
      // herhangi bir işlem yapması önlenir.
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Wrapper(),
      ),
    );
  }
}
