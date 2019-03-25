import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'step_make_burguer.dart';

class DetailBurguer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('Burguer Recipes'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              height: MediaQuery.of(context).size.height / 1.35,
              left: 10.0,
              right: 10.0,
              top: 100.0,
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                      ),
                      Text(
                        'BACON LOVER´S',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Alegreya"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(Icons.timer),
                                Text('30 min.')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.fastfood),
                                Text('8 servings')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.assessment),
                                Text('960 calories')
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Difficulty',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Alegreya",
                                        fontWeight: FontWeight.bold)),
                                FilterChip(
                                  backgroundColor: Colors.green,
                                  label: Text('Easy'),
                                  onSelected: (b) {},
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('Beer Combination',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Alegreya",
                                        fontWeight: FontWeight.bold)),
                                FilterChip(
                                  backgroundColor: Colors.brown,
                                  label: Text(
                                    'Pure malt beer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onSelected: (b) {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: <Widget>[
                            Text('195 Reviews'),
                            SmoothStarRating(
                              allowHalfRating: false,
                              onRatingChanged: (v) {},
                              starCount: 5,
                              rating: 4,
                              size: 25.0,
                              color: Colors.redAccent,
                              borderColor: Colors.redAccent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Ingredients:',
                                  style: TextStyle(
                                      fontFamily: 'Alegreya', fontSize: 24.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                      'House bread, Rib burguer, Cheddar english,'
                                      ' 7 slices of bacon, Maione of the house'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 16.0),
                        child: Row(
                          children: <Widget>[
                            Text('Preparation:',
                                style: TextStyle(
                                    fontFamily: 'Alegreya', fontSize: 24.0))
                          ],
                        ),
                      ),
                      StepMakeBurguer()
                    ],
                  ),
                ),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: 'burguer',
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/burguer-01.png'))),
                )),
          )
        ],
      ),
    );
  }
}
