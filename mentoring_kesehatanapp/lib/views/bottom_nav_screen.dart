import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentoring_kesehatanapp/views/berita_screen.dart';
import 'package:mentoring_kesehatanapp/views/profil_screen.dart';
import 'package:mentoring_kesehatanapp/widget/label_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'kamus_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screen = [
    BeritaScreen(),
    KamusScreen(),
    ProfilScreen(),
  ];

  final List _menu = ["Berita", "Kamus", "Profil"];

  int _currentindex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  String email = "", nama = "";
  int value;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString("email");
      nama = preferences.getString("nama");
      value = preferences.getInt("value");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: namaApp(20, Colors.black87, Colors.blue, _menu[_currentindex]),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _screen[_currentindex],
      floatingActionButton: namaMenu(_menu[_currentindex]),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.library_books_rounded, size: 24, color: Colors.white),
          Icon(Icons.menu_book_rounded, size: 24, color: Colors.white),
          Icon(Icons.person_rounded, size: 24, color: Colors.white),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.white10,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
