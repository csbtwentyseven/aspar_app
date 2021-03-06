import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aspar_main/main_page/home_app.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GirisYap extends StatefulWidget {
  static GlobalKey<HomeAppState> homeAppKey = GlobalKey();

  late String email;
  late String sifre;
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  GirisYap(this.email, this.sifre, {Key? key}) : super(key: key);

  void girisYap(BuildContext context) async {
    try {
      Fluttertoast.showToast(
          msg: "Giriş Yapılıyor, Lütfen Bekleyiniz...",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0);
      await _auth.signInWithEmailAndPassword(email: email, password: sifre);
      Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => HomeApp(key: homeAppKey),
          ));

      Fluttertoast.showToast(
          msg: "Giriş Başarılı",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    } catch (e) {
      debugPrint(e.toString());
      Fluttertoast.showToast(
          msg:
              "Giriş Başarısız Lütfen E-Posta ve Şİfrenizi Kontrol Ediniz,${e.toString()}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  State<GirisYap> createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
