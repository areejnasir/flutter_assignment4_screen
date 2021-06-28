import 'package:flutter/material.dart';

class HomePicture extends StatelessWidget {
  // const AAA({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.black,
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Items",
                textAlign: TextAlign.left,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              // color: Colors.pink,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardwidge(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMF0Z1weGm3CB2oi1EdNh2SCObbbPDMh9YzQ&usqp=CAU"),
                  cardwidge(
                      "data:image/jpeg;base64,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"),
                  cardwidge(
                      "https://lh3.googleusercontent.com/proxy/KM4ir2m5hd6oZrSnbxo3tYgZs1W9EpaxQUpLv_hS39olCCH8H4x4j-p0LK0vVaF4RfLVFN0q5qzT9O6yFaQUBirpjsWm2DN61KbmBJwh84-gLThZ2RsTrARmEsQu7ad63NCmZmdR03GV3D4"),
                  cardwidge(
                      "https://i.pinimg.com/originals/bd/ef/cb/bdefcbc72735f64db17f3250b1e64245.png"),
                  cardwidge(
                      "https://freepngimg.com/thumb/socks/1-2-socks-png-hd.png"),
                  cardwidge(
                      "https://i.pinimg.com/originals/0c/d7/60/0cd76095c9ce123b284620c9e1bbad34.png"),
                  cardwidge(
                      "https://images-na.ssl-images-amazon.com/images/I/91t8MO31PAL.png"),
                  cardwidge(
                      "https://tejarahworld.com/wp-content/uploads/2017/06/kurta-png-desi-sarees-shop-in-southall-london-uk-offers-indian-pakistani-exclusive-men-s-kurta-salwar-shalwar-kameez-churidar-with-thread-and-zari-embroidery-500-300x249.png"),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget cardwidge(String pic) {
  return Container(
    width: 300,
    height: 100,
    margin: EdgeInsets.only(
      left: 20,
    ),
    child: Card(
      child: Column(
        children: [
          Container(
            // color: Colors.green,
            width: 200,
            height: 120,
            decoration: BoxDecoration(
                // color: Colors.pink,
                image: DecorationImage(
              image: NetworkImage(pic),
              fit: BoxFit.fill,
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            // color: Colors.blue[500],
            // alignment: Alignment.center,
            height: 60,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Just another product",
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RS 12,000",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue[700]),
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
}
