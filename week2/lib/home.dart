import 'package:flutter/material.dart';
import 'package:week2/Week2Task3/hitung_umur.dart';
import 'package:week2/Week2Task6/bangun_datar.dart';
import 'package:week2/week2Task4/form_login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HitungUmur()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      '1',
                      style: TextStyle(fontSize: 24),
                    )),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text('Week 2 Task 3'),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => FormLogin()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      '2',
                      style: TextStyle(fontSize: 24),
                    )),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text('Week 2 Task 4'),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BangunDatar()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      '3',
                      style: TextStyle(fontSize: 24),
                    )),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text('Week 2 Task 6'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
