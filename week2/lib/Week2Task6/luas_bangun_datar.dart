import 'package:flutter/material.dart';

class LuasBangunDatar extends StatefulWidget {
  @override
  _LuasBangunDatarState createState() => _LuasBangunDatarState();
}

class _LuasBangunDatarState extends State<LuasBangunDatar> {
  int luasPersegi,
      luasPersegiPanjang,
      luasJajarGenjang,
      sisi,
      panjang,
      lebar,
      alas,
      tinggi;

  final _keyPersegi = new GlobalKey<FormState>();
  final _keyPersegiPanjang = new GlobalKey<FormState>();
  final _keyJajarGenjang = new GlobalKey<FormState>();

  checkPersegi() {
    setState(() {
      final form = _keyPersegi.currentState;
      form.save();
      luasPersegi = sisi * sisi;
    });
  }

  checkPersegiPanjang() {
    setState(() {
      final form = _keyPersegiPanjang.currentState;
      form.save();
      luasPersegiPanjang = panjang * lebar;
    });
  }

  checkJajarGenjang() {
    setState(() {
      final form = _keyJajarGenjang.currentState;
      form.save();
      luasJajarGenjang = alas * tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Bangun Datar"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Text("Persegi"),
            Form(
              key: _keyPersegi,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Sisi"),
                  onSaved: (value) => sisi = int.parse(value),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Text("Luas Persegi adalah $luasPersegi"),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.orange,
              onPressed: () {
                checkPersegi();
              },
              child: Text("Hitung luas persegi"),
            ),
            SizedBox(
              height: 32,
            ),
            Form(
              key: _keyPersegiPanjang,
              child: Column(
                children: [
                  Text("Persegi Panjang"),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Panjang"),
                      onSaved: (value) => panjang = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Lebar"),
                      onSaved: (value) => lebar = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text("Luas Persegi Panjang adalah $luasPersegiPanjang"),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.orange,
                    onPressed: () {
                      checkPersegiPanjang();
                    },
                    child: Text("Hitung luas persegi panjang"),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            Form(
              key: _keyJajarGenjang,
              child: Column(
                children: [
                  Text("Jajar Genjang"),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Alas"),
                      onSaved: (value) => alas = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Tinggi"),
                      onSaved: (value) => tinggi = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text("Luas Jajar genjang adalah $luasJajarGenjang"),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.orange,
                    onPressed: () {
                      checkJajarGenjang();
                    },
                    child: Text("Hitung luas jajar genjang"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
