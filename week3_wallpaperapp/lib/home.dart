import 'package:flutter/material.dart';
import 'package:week3_wallpaperapp/detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageList = new List();
  TextEditingController searchController = new TextEditingController();
  List cat = [
    "assets/kucing.jpg",
    "assets/kucing2.jpg",
    "assets/kucing3.jpg",
    "assets/kucing4.jpg",
    "assets/kucing5.jpg",
    "assets/kucing6.jpg",
    "assets/kucing7.jpg",
    "assets/kucing8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: namaApp(),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemCount: cat.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail(cat[i])));
            },
            child: Container(
              child: Image.asset(
                cat[i],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget namaApp() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(
        "Wallpaper",
        style: TextStyle(color: Colors.black87, fontFamily: 'Overpass'),
      ),
      Text(
        "Cat",
        style: TextStyle(color: Colors.blue, fontFamily: 'Overpass'),
      )
    ],
  );
}
