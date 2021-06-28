import 'package:flutter/material.dart';
import 'gridcrd.dart';
import 'homeSlider.dart';
import 'homeDrawer.dart';
import 'homeSmallSlider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: Colors.purple[600],
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
              child: Column(
        children: [
          HomePicture(),
          SmallSlider(),
          GridCrd(),
        ],
      ))),
      drawer: HomeDrawer(),
    );
  }
}
