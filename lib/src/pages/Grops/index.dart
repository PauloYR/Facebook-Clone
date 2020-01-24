import 'package:facebook_clone/src/model/CategoriesGroups.dart';
import 'package:flutter/material.dart';
import 'components/SearchGroups.dart';



class Groups extends StatelessWidget {
    List<CategoriesGroups> list = [];

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child:Column(
        children: <Widget>[
          SearchGroups(),
           ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, position) {
            return Text(list[position].name);
        })
        ],
      ));
  }

  void addList(){
    list.add(CategoriesGroups("", "Teste"));
    list.add(CategoriesGroups("", "Teste"));
    list.add(CategoriesGroups("", "Teste"));
    list.add(CategoriesGroups("", "Teste"));
  }

}