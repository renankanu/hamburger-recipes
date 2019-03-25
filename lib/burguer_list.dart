import 'package:flutter/material.dart';
import 'burguer.dart';

class BurguerList extends StatelessWidget {
  final List<BurguerCard> hamburguers;

  BurguerList(this.hamburguers);

  Widget _buildProductItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: hamburguers[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: hamburguers.length,
    );
  }
}
