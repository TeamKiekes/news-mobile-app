import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("My"),
        Text(
          "News",
          style: TextStyle(color: Colors.blue),
        )
      ],
    )));
  }
}
