import 'package:flutter/material.dart';
import 'package:aspar_main/local_functions/userdata.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 3.0, color: Color(0xFF166FC0)),
            left: BorderSide(width: 3.0, color: Color(0xFF166FC0)),
            right: BorderSide(width: 3.0, color: Color(0xFF166FC0)),
            bottom: BorderSide(width: 0),
          )),
      accountName: FutureBuilder(
        future: UserData.getUserName,
        initialData: "Yükleniyor...",
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Text(
            "${snapshot.data}",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF166FC0)),
          );
        },
      ),
      accountEmail: FutureBuilder(
        future: UserData.getEmail,
        initialData: "Yükleniyor...",
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Text(
            "${snapshot.data}",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0FA9EA)),
          );
        },
      ),
      currentAccountPicture: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xFF0FA9EA),
        child: CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: FutureBuilder(
            future: UserData.getUserName,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                String? username = snapshot.data;
                return Text(
                  "${username!.substring(0, 2)}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xFF166FC0)),
                );
              } else {
                return Text(
                  "..",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xFF166FC0)),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
