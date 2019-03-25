import 'package:flutter/material.dart';

class BurguerCard extends StatelessWidget {
  String imgUrl;
  String title;
  String likes;
  String countFavorites;
  bool favorited;

  BurguerCard(
      this.imgUrl, this.title, this.likes, this.countFavorites, this.favorited);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(.1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 8.0, right: 16.0),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.favorite,
                color: favorited == true ? Colors.red : Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              imgUrl,
              width: 201.0,
              height: 111.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 25.0, fontFamily: "Alegreya"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      likes,
                      style: TextStyle(fontFamily: 'Alegreya'),
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(fontFamily: 'Alegreya', fontSize: 18.0),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      countFavorites,
                      style: TextStyle(fontFamily: 'Alegreya'),
                    ),
                    Text(
                      'Favorited',
                      style: TextStyle(fontFamily: 'Alegreya', fontSize: 18.0),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
