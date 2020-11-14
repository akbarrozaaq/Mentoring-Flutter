import 'package:flutter/material.dart';

class HitungUmur extends StatefulWidget {
  @override
  _HitungUmurState createState() => _HitungUmurState();
}

class _HitungUmurState extends State<HitungUmur> {
  int tanggal, bulan, tahun, umurTahun, umurBulan, umurTanggal;
  DateTime today = DateTime.now();
  String umur;
  final _key = new GlobalKey<FormState>();

  check() {
    final form = _key.currentState;
    form.save();
    umurTahun = today.year - tahun;
    umurBulan = today.month - bulan;
    umurTanggal = today.day - tanggal;
    umur = "$umurTahun tahun $umurBulan bulan $umurTanggal hari.";
    showAlertDialog(context);
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Hitung Umur"),
      content: Text("Umur anda sekarang ialah $umur"),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Umur"),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Tanggal"),
                    maxLength: 2,
                    onSaved: (value) => tanggal = int.parse(value),
                  ),
                ),
                Text("/"),
                SizedBox(
                  width: size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Bulan"),
                    maxLength: 2,
                    onSaved: (value) => bulan = int.parse(value),
                  ),
                ),
                Text("/"),
                SizedBox(
                  width: size.width * 0.15,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Tahun"),
                    maxLength: 4,
                    onSaved: (value) => tahun = int.parse(value),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Hitung",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                check();
              },
            ),
          ],
        ),
      ),
    );
  }
}
