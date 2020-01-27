import 'package:facebook_clone/my-colors.dart';
import 'package:facebook_clone/src/model/CategoriesGroups.dart';
import 'package:facebook_clone/src/pages/Groups/components/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/SearchGroups.dart';

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  List<CategoriesGroups> list = [];

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child:Column(
        children: <Widget>[
          SearchGroups(),
          Categories(),
        ]
      ));
  }
} 