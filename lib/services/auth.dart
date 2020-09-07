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
      print(user.uid);
      return _firebasedenGelenKullanici(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // bağlantının sürekli açık kalabilmesi için stream kullanılmıştır.
  // uygulamaya giriş yapıldıgında signin olan kullanıcının durumunun değişip
  // değişmediğini bize söyleyen metod(authStateChanges) kullanılmıştır.
  Stream<Kullanici> get user {
    return _auth.authStateChanges.call().map(_firebasedenGelenKullanici);
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
