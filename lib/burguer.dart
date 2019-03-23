import 'package:flutter/material.dart';

class BurguerCard extends StatelessWidget {

  String imgUrl;
  String title;

  BurguerCard(this.imgUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: Color(0xFFfaecec),
        borderRadius: BorderRadius.circular(20.0),
        border:
        Border.all(color: Colors.grey.withOpacity(.3), width: .2),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Image.asset(
              imgUrl,
              width: 281.0,
              height: 191.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Text(
              title,
              style:
              TextStyle(fontSize: 25.0, fontFamily: "Alegreya"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.fastfood),
              )
            ],
          )
        ],
      ),
    );
  }
}
