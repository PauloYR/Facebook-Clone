import 'package:facebook_clone/src/widget/my-vertical-divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoxStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(FontAwesomeIcons.video, color: Colors.red, size: 15.0),
                  Padding(
                      padding: EdgeInsets.only(left: 7.0),
                      child: Text("Ao vivo",
                          style: new TextStyle(fontWeight: FontWeight.bold)))
                ]),
                MyVerticalDivider(),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.photo_library,
                      color: Colors.green,
                      size: 16.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text("Foto",
                            style: new TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
                MyVerticalDivider(),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.pink,
                      size: 16.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text("Localização",
                            style: new TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            )));
  }
}
