import 'package:flutter/material.dart';

class HomeLogin extends StatelessWidget {
  final String username, password;

  const HomeLogin({Key key, this.username, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Username : " + username),
            Text("Password : " + password)
          ],
        ),
      ),
    );
  }
}
