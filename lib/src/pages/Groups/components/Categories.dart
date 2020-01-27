import 'package:flutter/material.dart';
import 'package:facebook_clone/src/model/CategoriesGroups.dart';

class Categories extends StatelessWidget {
  List<CategoriesGroups> list = [
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, position) {
            return Text(list[position].name);
        });
  }
}