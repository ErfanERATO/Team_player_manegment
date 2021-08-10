import 'package:flutter/material.dart';

class SortScreen extends StatefulWidget {
  static const routeName = "/sort";

  @override
  _SortScreenState createState() => _SortScreenState();
}

class _SortScreenState extends State<SortScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Your Sort Option"),
      ),
    );
  }
}
