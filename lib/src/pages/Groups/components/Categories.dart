import 'package:facebook_clone/my-colors.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/src/model/CategoriesGroups.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  List<CategoriesGroups> list = [
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
    CategoriesGroups("", "Teste"),
  ];

  @override
  Widget build(BuildContext context) {
    addList();
    return Container(
            height: 35.0,
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int position) {
                return new Container(
                  margin: EdgeInsets.only(left: diretion(position, true),right: diretion(position, false)),
                  decoration: BoxDecoration(
                    color: MyColors.cinza,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:Row(
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10.0,right: 5.0),
                      child: SvgPicture.asset(list[position].icon,
                      height: 16.5,
                      width: 16.5,)),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Text(
                              list[position].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.5,
                              ),),
                    ),
                  ],)
                );
              },
            ),
          );
         
  }

  void addList(){
    list.clear();
    list.add(CategoriesGroups("images/group.svg", "Seus grupos"));
    list.add(CategoriesGroups("images/compass.svg", "Descobrir"));
    list.add(CategoriesGroups("images/plus.svg","Criar"));
    list.add(CategoriesGroups("images/gear.svg", "Configurações"));
  }

  double diretion(int position,bool left){
    if(position == 0 && left)
      return 15.0;
    else if(position == list.length - 1  && !left)
      return 15.0;
    return 4.0;
  }

}