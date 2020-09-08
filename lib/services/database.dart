import 'package:cloud_firestore/cloud_firestore.dart';

// firebase'in için bulunan cloud firestore'a bilgileri aktarabiliriz.

class DatabaseService {
  // bu class sayesinde içerisinde constructor ile kullanıcının uid bilgisini alacak,
  // ve bu uid'ye göre verileri ekleyecek

  final String uid;
  DatabaseService({this.uid});

  // bir belge yada koleksiyon eklemek için CollectionReference tipinde bir değişken olmalı.
  // onunda  içindeki document(doc()) metodu ile verilerimizi ekleyeceğiz.
  final CollectionReference siparisCollection =
      FirebaseFirestore.instance.collection("siparişler");
  // . collection ile siparişler adında firebasede bir koleksiyon oluşturuldu.
  // bu her calıstıgında siparişler adında bir koleksiyon olup olmadıgına bakacak varsa
  // oluşturmadan direk siparişler koleksiyonunu benim siparisCollection değişkenime getirecek,
  // eger yoksa da oluşturacak ve siparisCollection değişkenine getirecek.

  Future veriGuncelle(String isim, String seker, int koyuluk) async {
    // burada belge yoksa oluşturacağız, varsa güncelleyeceğiz.
    return await siparisCollection
        .doc(uid)
        .set({"seker": seker, "isim": isim, "koyuluk": koyuluk});
    // siparisCollection.doc(uid) kullanıcı için oluşturulan belgeye erişildi.
    // veriGuncelle metodu çalıştığı zaman kullanıcının uid'sine bakarak belge oluşturulabilecek.
  }
}
