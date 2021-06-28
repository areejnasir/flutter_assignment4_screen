import 'package:flutter/material.dart';

class GridCrd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "Papular Items",
          textAlign: TextAlign.left,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 300,

        child: GridView.count(
          shrinkWrap: true,
          primary: true,
          padding: const EdgeInsets.all(5.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Card(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(
                            "https://image.made-in-china.com/202f0j00gpLRHTArqFkt/Custom-T-Shirts-100-Cotton-Men-Tshirt-Tee-Shirt-Printing-T-Shirt-Polo-T-Shirt-for-Men-Women-Plain-T-Shirt.jpg"),
                        fit: BoxFit.fill,
                      )),
                    ),
                    Container(
                      height: 60,
                      // color: Colors.green,
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Just another product",
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.purple[600],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.purple[600],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.purple[600],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.purple[600],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "RS 12,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[700]),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
        //   ],
        // ),
      )
    ]);
  }
}
