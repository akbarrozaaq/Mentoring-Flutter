import 'package:flutter/material.dart';

class KelilingBangunDatar extends StatefulWidget {
  @override
  _KelilingBangunDatarState createState() => _KelilingBangunDatarState();
}

class _KelilingBangunDatarState extends State<KelilingBangunDatar> {
  int kelilingPersegi,
      kelilingPersegiPanjang,
      kelilingJajarGenjang,
      sisi,
      panjang,
      lebar,
      panjang1,
      panjang2,
      lebar1,
      lebar2;

  final _keyPersegi = new GlobalKey<FormState>();
  final _keyPersegiPanjang = new GlobalKey<FormState>();
  final _keyJajarGenjang = new GlobalKey<FormState>();

  checkPersegi() {
    setState(() {
      final form = _keyPersegi.currentState;
      form.save();
      kelilingPersegi = 4 * sisi;
    });
  }

  checkPersegiPanjang() {
    setState(() {
      final form = _keyPersegiPanjang.currentState;
      form.save();
      kelilingPersegiPanjang = (2 * panjang) + (2 * lebar);
    });
  }

  checkJajarGenjang() {
    setState(() {
      final form = _keyJajarGenjang.currentState;
      form.save();
      kelilingJajarGenjang = panjang1 + panjang2 + lebar1 + lebar2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keliling Bangun Datar"),
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
            Text("Keliling Persegi adalah $kelilingPersegi"),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.orange,
              onPressed: () {
                checkPersegi();
              },
              child: Text("Hitung Keliling persegi"),
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
                  Text(
                      "Keliling Persegi Panjang adalah $kelilingPersegiPanjang"),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.orange,
                    onPressed: () {
                      checkPersegiPanjang();
                    },
                    child: Text("Hitung Keliling persegi panjang"),
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
                      decoration: InputDecoration(labelText: "Sisi Panjang 1"),
                      onSaved: (value) => panjang1 = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Sisi Panjang 2"),
                      onSaved: (value) => panjang2 = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Sisi Lebar 1"),
                      onSaved: (value) => lebar1 = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Sisi Lebar 2"),
                      onSaved: (value) => lebar2 = int.parse(value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text("Keliling Jajar genjang adalah $kelilingJajarGenjang"),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.orange,
                    onPressed: () {
                      checkJajarGenjang();
                    },
                    child: Text("Hitung Keliling jajar genjang"),
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
