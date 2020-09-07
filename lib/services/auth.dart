import 'package:firebase_auth/firebase_auth.dart';
import 'package:training41kahvenisecapp2/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // .instance iyerek firebasedeki auth classı initilase edilmiş oluyor.
  // _auth nesnesi ile class içerisindeki methodlara erişim sağlanabiliyor.

  Kullanici _firebasedenGelenKullanici(User kullanici) {
    return kullanici != null ? Kullanici(uid: kullanici.uid) : null;
  }

  Future signInAnonim() async {
    // var olan anonim kullanıcıyı çağırma işlemi
    try {
      UserCredential result =
          await _auth.signInAnonymously(); // AuthResult yerine
      User user = result.user;
      return _firebasedenGelenKullanici(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Stream<Kullanici> get user {
    return _auth.authStateChanges.call().map(_firebasedenGelenKullanici);
  }
}
