import 'package:flutter/material.dart';
import 'burguer.dart';
import 'burguer_list.dart';
import 'detail_burguer.dart';

void main() => runApp(MaterialApp(
      title: 'Burguer App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  List<BurguerCard> burguers = []
    ..add(BurguerCard("assets/burguer-01.png", "BYKANU"))
    ..add(BurguerCard("assets/burguer-02.png", "Blue Plate"))
    ..add(BurguerCard("assets/hamone.png", "Vulcan Burguer"))
    ..add(BurguerCard("assets/burguer-03.png", "Big Smasher"));

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
            children: <Widget>[Expanded(child: BurguerList(burguers))],
          )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailBurguer()));
          }),
    );
  }
}
