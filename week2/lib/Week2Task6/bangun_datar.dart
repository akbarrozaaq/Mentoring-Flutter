import 'package:flutter/material.dart';
import 'package:week2/Week2Task6/keliling_bangun_datar.dart';
import 'package:week2/Week2Task6/luas_bangun_datar.dart';

class BangunDatar extends StatefulWidget {
  @override
  _BangunDatarState createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas & Keliling Bangun Datar"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Pilih menggunakan rumus :",
            style: TextStyle(fontSize: 26),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LuasBangunDatar()),
                  );
                },
                child: Text("Luas"),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            KelilingBangunDatar()),
                  );
                },
                child: Text("Keliling"),
              )
            ],
          )
        ],
      ),
    );
  }
}
