import 'package:facebook_clone/my-colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Grupos",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Container(
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyColors.cinza),
              child: Icon(FontAwesomeIcons.search, size: 19),
            )
          ],
        ));
  }
}
