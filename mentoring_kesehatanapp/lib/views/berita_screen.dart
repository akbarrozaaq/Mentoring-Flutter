import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mentoring_kesehatanapp/model/api.dart';
import 'package:mentoring_kesehatanapp/model/berita_model.dart';
import 'package:mentoring_kesehatanapp/views/detail_berita.dart';
import 'package:http/http.dart' as http;

class BeritaScreen extends StatefulWidget {
  @override
  _BeritaScreenState createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  List<BeritaModel> beritaModel;

  var loading = false;
  Future<List<BeritaModel>> getBerita() async {
    setState(() {
      loading = true;
    });
    final response = await http.get(BaseUrl.dataBerita);
    List res = jsonDecode(response.body);
    List<BeritaModel> data = [];
    for (var i = 0; i < res.length; i++) {
      var berita = BeritaModel.fromJson(res[i]);
      data.add(berita);
    }

    beritaModel = data;
    setState(() {
      loading = false;
    });
    return beritaModel;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBerita();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: beritaModel.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => DetailBerita(
                          gambar: beritaModel[index].gambar,
                          isi: beritaModel[index].isi,
                          judul: beritaModel[index].judul,
                          createdDate: beritaModel[index].createdDate,
                          penulis: beritaModel[index].penulis,
                        ),
                      ),
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
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.30,
                            width: size.width * 0.32,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Hero(
                                tag: beritaModel[index].gambar,
                                child: Material(
                                  child: Image.network(
                                    beritaModel[index].gambar,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            height: size.width * 0.30,
                            width: size.width * 0.63,
                            child: Column(
                              children: [
                                Text(
                                  beritaModel[index].judul,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  beritaModel[index].isi,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
