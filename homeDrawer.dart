import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("hello")),
        ListTile(
          title: Text("Items"),
        )
      ],
    ));
  }
}
