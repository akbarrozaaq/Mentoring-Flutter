import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "COVID 19 NEWS",
                  style: TextStyle(color: Colors.redAccent, fontSize: 24),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                Column(
                  children: [
                    Text(
                      "All Cases : 272691",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    Text(
                      "All Deaths : 11310",
                      style: TextStyle(color: Colors.red, fontSize: 24),
                    ),
                    Text(
                      "All Recovered : 90618",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    ),
                    Text(
                      "All Active Cases : 170763",
                      style: TextStyle(color: Colors.yellow, fontSize: 24),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Input a Country',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                              color: Colors.red,
                              child: Text(
                                "Search",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: RaisedButton(
                              color: Colors.red,
                              child: Text(
                                "All Information",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.red,
                          child: Text(
                            "Updates of Sri Lanka",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "IMPORTANT",
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  'Search "South Korea" as "Korea"',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
