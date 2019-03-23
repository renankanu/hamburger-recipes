import 'package:flutter/material.dart';
import 'burguer.dart';
import 'burguer_list.dart';

void main() => runApp(MaterialApp(
      title: 'Burguer App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  List<BurguerCard> burguers = []
    ..add(BurguerCard("assets/burguer-01.png", "Burguer BYKANU"))
    ..add(BurguerCard("assets/burguer-02.png", "Burguer Blue Plate"))
    ..add(BurguerCard("assets/burguer-03.png", "Burguer Big Smasher"));

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
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                  child: Image.asset("assets/hamone.png",
                      width: 62.0, height: 43.0),
                ),
              ),
              Expanded(child: BurguerList(burguers))
            ],
          )),
    );
  }
}
