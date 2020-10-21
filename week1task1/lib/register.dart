import 'package:flutter/material.dart';
import 'package:week1task1/kolom_text_field.dart';

import 'kolom_password_textfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _secureText = true;
  bool _checkBoxValue = false;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
            KolomTextField(
              label: 'Name',
            ),
            KolomTextField(
              label: 'Username',
            ),
            KolomTextField(
              label: 'Email',
            ),
            KolomPasswordTextField(
              label: 'Enter password',
              obsecureText: _secureText,
              showPass: showHide,
            ),
            KolomPasswordTextField(
              label: 'Confirm password',
              obsecureText: _secureText,
              showPass: showHide,
            ),
            Text("Available to be a :"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _checkBoxValue,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          _checkBoxValue = value;
                        });
                      },
                    ),
                    Text("Mentor")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkBoxValue,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          _checkBoxValue = value;
                        });
                      },
                    ),
                    Text("Mentee")
                  ],
                ),
              ],
            ),
            Container(
              width: size.width * 0.9,
              child: Row(
                children: [
                  Checkbox(
                    value: _checkBoxValue,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _checkBoxValue = value;
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      'I affirm that I have read and accept to be bound by the AnitaB.org Code of Conduct, Terms and Privacy Policy. Further, I consent to use of my information for the stated purpose',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            RaisedButton(
                color: Colors.cyan, onPressed: () {}, child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
