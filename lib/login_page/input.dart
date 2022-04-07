import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aspar_main/veritabani/girisyap.dart';

class InputAlan extends StatefulWidget {
  const InputAlan({Key? key}) : super(key: key);

  @override
  State<InputAlan> createState() => InputAlanState();
}

class InputAlanState extends State<InputAlan> {
  late TextEditingController _emailKontroller = TextEditingController();
  late TextEditingController _sifreKontroller;

  @override
  void initState() {
    super.initState();
    _emailKontroller = TextEditingController();
    _sifreKontroller = TextEditingController();
  }

  @override
  void dispose() {
    _emailKontroller.dispose();
    _sifreKontroller.dispose();
    super.dispose();
  }

  Future<void> saveEmail() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("email", _emailKontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: TextFormField(
            controller: _emailKontroller,
            autofocus: true,
            decoration: const InputDecoration(
                labelText: "E - Mail",
                hintText: "E-Mail",
                prefixIcon: Icon(Icons.email_outlined),
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 15),
          child: TextFormField(
            controller: _sifreKontroller,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Password",
                prefixIcon: Icon(Icons.password_sharp),
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            String email = _emailKontroller.text;
            String sifre = _sifreKontroller.text;
            GirisYap girisYap = GirisYap(email, sifre);
            girisYap.girisYap(context);
            saveEmail();
          },
          child: const Text("SIGN IN"),
          style: OutlinedButton.styleFrom(
              primary: const Color(0xFF166FC0),
              side: const BorderSide(color: Color(0xFF0FA9EA), width: 2),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        )
      ],
    );
  }
}