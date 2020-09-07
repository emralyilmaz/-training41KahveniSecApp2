import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // .instance iyerek firebasedeki auth classı initilase edilmiş oluyor.
  // _auth nesnesi ile class içerisindeki methodlara erişim sağlanabiliyor.

  Future signInAnonim() async {
    // var olan anonim kullanıcıyı çağırma işlemi
    try {
      UserCredential result =
          await _auth.signInAnonymously(); // AuthResult yerine
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
