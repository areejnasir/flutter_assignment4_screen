import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SmallSlider extends StatelessWidget {
  const SmallSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
      height: 150,
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            height: 40,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "More Categories",
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SmallList(),
                    SmallList(),
                    SmallList(),
                    SmallList(),
                    SmallList(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class SmallList extends StatelessWidget {
  const SmallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 0))
        ],
      ),

      width: 220,
      child: Scaffold(
          body: ListTile(
        leading: Container(
          width: 100,
          decoration: BoxDecoration(
              // color: Colors.red,

              image: DecorationImage(
                  image: NetworkImage(
                      "http://assets.stickpng.com/images/580b585b2edbce24c47b27bb.png"),
                  fit: BoxFit.cover)),
        ),
        title: Text("Products"),
        subtitle: Text("more..."),
      )),
    );
  }
}
