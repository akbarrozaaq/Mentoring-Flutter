import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mentoring_kesehatanapp/model/api.dart';
import 'package:mentoring_kesehatanapp/model/kamus_model.dart';

class KamusScreen extends StatefulWidget {
  @override
  _KamusScreenState createState() => _KamusScreenState();
}

class _KamusScreenState extends State<KamusScreen> {
  List<KamusModel> kamusModel;

  var loading = false;
  Future<List<KamusModel>> getKamus() async {
    setState(() {
      loading = true;
    });
    final response = await http.get(BaseUrl.dataKamus);
    List res = jsonDecode(response.body);
    List<KamusModel> data = [];
    for (var i = 0; i < res.length; i++) {
      var kamus = KamusModel.fromJson(res[i]);
      data.add(kamus);
    }

    kamusModel = data;
    setState(() {
      loading = false;
    });
    return kamusModel;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getKamus();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: kamusModel.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    _showDetail(
                        kamusModel[index].singkatan,
                        kamusModel[index].kepanjangan,
                        kamusModel[index].pengertian);
                  },
                  child: Padding(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kamusModel[index].singkatan,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("(" +
                                      kamusModel[index].kepanjangan +
                                      ")"),
                                ],
                              ),
                            ),
                            Container(
                                child: Text(
                              'Detail',
                              style: TextStyle(color: Colors.blue),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  void _showDetail(String singkatan, String kepanjangan, String pengertian) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            singkatan,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          content: new Text(kepanjangan + "\n\n" + pengertian),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
