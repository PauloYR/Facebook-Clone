import 'package:flutter/material.dart';

class PostFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(50),
              child: Image.asset(
                "images/profile_facebook.jpeg",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 30.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: 'No que está pensando ?',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 12, top: 5),
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
