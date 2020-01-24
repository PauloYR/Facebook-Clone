import 'package:flutter/material.dart';
import 'components/BoxPost.dart';
import 'components/BoxStatus.dart';
import 'components/BoxStore.dart';
import 'components/PostFast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          PostFast(),
          Divider(color: Colors.grey, height: 1),
          BoxStatus(),
          Divider(color: Colors.grey, thickness: 7.0),
          BoxStore(),
          Divider(color: Colors.grey, thickness: 7.0),
          BoxPost(),
        ],
      ),
    ));
  }
}