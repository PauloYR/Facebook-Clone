import 'package:flutter/material.dart';

class SearchGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Grupos",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              Icon(Icons.search, size: 27)
            ],
          ));
  }
}