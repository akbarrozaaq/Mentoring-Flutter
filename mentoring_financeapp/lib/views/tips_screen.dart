import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mentoring_financeapp/model/api.dart';
import 'package:mentoring_financeapp/model/tips_model.dart';

class TipsScreen extends StatefulWidget {
  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  List<TipsModel> tipsModel;

  var loading = false;
  Future<List<TipsModel>> getTips() async {
    setState(() {
      loading = true;
    });
    final response = await http.get(BaseUrl.dataTips);
    List res = jsonDecode(response.body);
    List<TipsModel> data = [];
    for (var i = 0; i < res.length; i++) {
      var tips = TipsModel.fromJson(res[i]);
      data.add(tips);
    }

    tipsModel = data;
    setState(() {
      loading = false;
    });
    return tipsModel;
  }

  @override
  void initState() {
    super.initState();
    getTips();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: tipsModel.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    _showDetail(
                      tipsModel[index].judul,
                      tipsModel[index].isi,
                    );
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
                              width: size.width * 0.8,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    tipsModel[index].judul,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    minFontSize: 14,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                child: Text(
                              'Detail',
                              style: TextStyle(color: Colors.purple),
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

  void _showDetail(String judul, String isi) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text(
            judul,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          content: Text(isi),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("OK"),
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
