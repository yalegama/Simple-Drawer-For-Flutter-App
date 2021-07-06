import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Drawer App",
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer App"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Nadun Yalegama"),
                accountEmail: Text("*****@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text("Nadun"),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "Nadun",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text("Page One"),
                trailing: Icon(Icons.arrow_upward),
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Page Two"),
                trailing: Icon(Icons.ondemand_video),
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Page Three"),
                trailing: Icon(Icons.cloud),
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Page Four"),
                trailing: Icon(Icons.collections),
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Page Five"),
                trailing: Icon(Icons.comment),
                onLongPress: () {},
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Home Page",
              style: TextStyle(fontSize: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
