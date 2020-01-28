import 'package:facebook_clone/src/pages/Groups/components/Categories.dart';
import 'package:facebook_clone/src/pages/Groups/components/BoxPost.dart';
import 'package:facebook_clone/src/pages/Groups/components/MyGroups.dart';
import 'package:flutter/material.dart';
import 'components/SearchGroups.dart';

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Column(
                children: <Widget>[
                  SearchGroups(), 
                  Categories(),
                  MyGroups(), 
                  BoxPost()
                  ])));
  }
}
