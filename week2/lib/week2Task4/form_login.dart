import 'package:flutter/material.dart';

import 'home_login.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username, password;
    final _key = new GlobalKey<FormState>();

    check() {
      final form = _key.currentState;
      form.save();
      if (username == "admin" && password == "admin") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomeLogin(
              username: username,
              password: password,
            ),
          ),
        );
      } else {}
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Form Login"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Username"),
                  onSaved: (value) => username = value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  onSaved: (value) => password = value,
                  obscureText: true,
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.purple,
                onPressed: () {
                  check();
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
