import 'package:flutter/material.dart';

class DetailBerita extends StatelessWidget {
  DetailBerita(
      {this.judul, this.isi, this.gambar, this.createdDate, this.penulis});
  final String judul;
  final String isi;
  final String gambar;
  final String createdDate;
  final String penulis;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 240,
                width: size.width,
                child: Hero(
                  tag: gambar,
                  child: Material(
                    child: InkWell(
                      child: Image.network(
                        gambar,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 10,
              //   child: namaApp(20, Colors.white, Colors.white),
              // ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(4),
                  child: Text(
                    createdDate,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/default.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      penulis,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              judul,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
            child: Text(
              isi,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
