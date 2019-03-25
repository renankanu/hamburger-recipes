import 'package:flutter/material.dart';

import 'burguer.dart';
import 'burguer_list.dart';

void main() => runApp(MaterialApp(
      title: 'Burguer App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  List<BurguerCard> burguers = []
    ..add(BurguerCard("assets/burguer-01.png", "By Kanu", "1350", "523", true, "easy"))
    ..add(BurguerCard(
        "assets/burguer-02.png", "Blue Plate", "230", "1230", false, "medium"))
    ..add(BurguerCard(
        "assets/hamone.png", "Vulcan Burguer", "9001", "10523", false, "medium"))
    ..add(BurguerCard(
        "assets/burguer-03.png", "Big Smasher", "1035", "360", false, "hard"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text('Kanu Burguer'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 15.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,
                              color: Color(0xfffe6262), size: 30.0),
                          contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Alegreya',
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(child: BurguerList(burguers))
            ],
          )),
    );
  }
}
