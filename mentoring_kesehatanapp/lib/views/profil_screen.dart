import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  String email = "", nama = "";

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString("email");
      nama = preferences.getString("nama");
    });
  }

  logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('value');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/profil.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.2,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(90),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.06,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            nama,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          email,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/default.jpg"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            child: FlatButton(
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.red, width: 3, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              onPressed: () {
                logOut();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Log out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
