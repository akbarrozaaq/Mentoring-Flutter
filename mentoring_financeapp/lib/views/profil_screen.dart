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
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                    ),
                  ),
                  Container(
                    height: size.height * 0.2,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.purple,
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.purple,
                          width: 3,
                          style: BorderStyle.solid),
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
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
