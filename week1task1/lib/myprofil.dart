import 'package:flutter/material.dart';

class MyProfil extends StatefulWidget {
  @override
  _MyProfilState createState() => _MyProfilState();
}

class _MyProfilState extends State<MyProfil> {
  bool _checkBoxValueMentor = true;
  bool _checkBoxValueMentoring = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("My Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              width: size.width * 0.5,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                  color: Colors.deepPurple, shape: BoxShape.circle),
            ),
            SizedBox(
              width: size.width * 0.5,
              child: TextFormField(
                initialValue: 'Bartek Pacia',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'bartoo',
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'barpac02@gmail.com',
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Available to mentor"),
                  Checkbox(
                    value: _checkBoxValueMentor,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _checkBoxValueMentor = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Needs Mentoring"),
                  Checkbox(
                    value: _checkBoxValueMentoring,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _checkBoxValueMentoring = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Hobbyist teenage programmer',
                decoration: InputDecoration(labelText: 'Bio'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'bartekpacia2',
                decoration: InputDecoration(labelText: 'Slack username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'bartekpacia2',
                decoration: InputDecoration(labelText: 'Location'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'bartekpacia2',
                decoration: InputDecoration(labelText: 'Occupation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
