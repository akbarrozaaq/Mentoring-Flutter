import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mentoring_financeapp/model/api.dart';
import 'package:mentoring_financeapp/model/jumlahuang_model.dart';
import 'package:mentoring_financeapp/model/uang_model.dart';

class KeuanganScreen extends StatefulWidget {
  @override
  _KeuanganScreenState createState() => _KeuanganScreenState();
}

class _KeuanganScreenState extends State<KeuanganScreen> {
  List<UangModel> uangModel;
  JumlahUangModel jumlahUangModel;

  var loading2 = false;
  Future<JumlahUangModel> getJumlahUang() async {
    setState(() {
      loading2 = true;
    });
    final response = await http.get(BaseUrl.jumlahUang);
    jumlahUangModel = JumlahUangModel.fromJson(jsonDecode(response.body));
    setState(() {
      loading2 = false;
    });
    return jumlahUangModel;
  }

  var loading = false;
  Future<List<UangModel>> getUang() async {
    setState(() {
      loading = true;
    });
    final response = await http.get(BaseUrl.ambildataUang);
    List res = jsonDecode(response.body);
    List<UangModel> data = [];
    for (var i = 0; i < res.length; i++) {
      var uanguang = UangModel.fromJson(res[i]);
      data.add(uanguang);
    }

    uangModel = data;
    setState(() {
      loading = false;
    });
    return uangModel;
  }

  @override
  void initState() {
    super.initState();
    getUang();
    getJumlahUang();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white10,
        body: loading2
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.2,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            height: size.height * 0.1,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                            ),
                          ),
                        ],
                      ),
                      Material(
                        elevation: 3,
                        type: MaterialType.card,
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.1,
                                  bottom: size.width * 0.05,
                                ),
                                child: Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: size.width * 0.1),
                                    child: Text(
                                      jumlahUangModel.jumlahuang,
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: IconButton(
                                            color: Colors.white,
                                            icon: Icon(Icons.add),
                                            onPressed: () {
                                              _showDialogTambah();
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: size.width * 0.1),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: IconButton(
                                            color: Colors.white,
                                            icon: Icon(Icons.remove),
                                            onPressed: () {
                                              _showDialogKurang();
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: loading
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            itemCount: uangModel.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.025,
                                  vertical: size.width * 0.025,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0),
                                      bottom: Radius.circular(20.0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: size.width * 0.7,
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                uangModel[index].deskripsi,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                            child: Text(
                                          "Rp. " + uangModel[index].uang,
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 18),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ));
  }

  void _showDialogKurang() {
    int uang;
    String deskripsi;
    final _key = new GlobalKey<FormState>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Text(
                        "Masukkan Nilai",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Form(
                      key: _key,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rp.",
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: SizedBox(
                                  width: size.width * 0.5,
                                  child: TextFormField(
                                    onSaved: (e) {
                                      int uang2;
                                      uang2 = int.parse(e);
                                      if (uang2 > 0) {
                                        uang = uang2 * -1;
                                      }
                                    },
                                    validator: (e) {
                                      if (e.isEmpty) {
                                        return "Nilai tidak boleh kosong";
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Masukkan nilai',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: SizedBox(
                              width: size.width * 0.7,
                              child: TextFormField(
                                onSaved: (e) => deskripsi = e,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan pemasukkan dana',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Batalkan",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.25,
                            child: RaisedButton(
                              onPressed: () {
                                final form = _key.currentState;
                                if (form.validate()) {
                                  form.save();
                                  http.post(
                                    BaseUrl.dataUang,
                                    body: {
                                      "uang": uang.toString(),
                                      "deskripsi": deskripsi,
                                    },
                                  );
                                  Navigator.pop(context);
                                }
                              },
                              child: Text(
                                "Tambah",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showDialogTambah() {
    int uang;
    String deskripsi;
    final _key = new GlobalKey<FormState>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Text(
                        "Masukkan Nilai",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Form(
                      key: _key,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rp.",
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: SizedBox(
                                  width: size.width * 0.5,
                                  child: TextFormField(
                                    onSaved: (e) => uang = int.parse(e),
                                    validator: (e) {
                                      if (e.isEmpty) {
                                        return "Nilai tidak boleh kosong";
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Masukkan nilai',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: SizedBox(
                              width: size.width * 0.7,
                              child: TextFormField(
                                onSaved: (e) => deskripsi = e,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan sumber pengeluaran dana',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Batalkan",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.25,
                            child: RaisedButton(
                              onPressed: () {
                                final form = _key.currentState;
                                if (form.validate()) {
                                  form.save();
                                  http.post(
                                    BaseUrl.dataUang,
                                    body: {
                                      "uang": uang.toString(),
                                      "deskripsi": deskripsi,
                                    },
                                  );
                                  Navigator.pop(context);
                                }
                              },
                              child: Text(
                                "Tambah",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
