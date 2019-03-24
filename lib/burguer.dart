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
        color: Colors.red.withOpacity(.1),
        borderRadius: BorderRadius.circular(20.0),
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
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 25.0, fontFamily: "Alegreya"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FilterChip(label: Text('Easy'), onSelected:(b) {}),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green.shade800,
                    child: Text('E'),
                  ),
                  label: Text('Dificult'),
                ),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: Text('B'),
                  ),
                  label: Text('Guinness'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
