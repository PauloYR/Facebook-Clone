import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Column(
      children: <Widget>[
        Padding(
              padding: EdgeInsets.all(15),
              child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Grupos",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            Icon(Icons.search, size: 27,)
          ],
        ))
      ],
    ));
  }
}