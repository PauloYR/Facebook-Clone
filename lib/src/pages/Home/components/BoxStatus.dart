import 'package:flutter/material.dart';

class BoxStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.videocam, color: Colors.red, size: 16.0),
              Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Ao vivo",
                      style: new TextStyle(fontWeight: FontWeight.bold)))
            ]),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.photo_library,
                  color: Colors.green,
                  size: 16.0,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("Fotos",
                        style: new TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.my_location,
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
        ));
  }
}