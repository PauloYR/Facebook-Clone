import 'package:facebook_clone/src/model/Group.dart';
import 'package:flutter/material.dart';

class MyGroups extends StatelessWidget {
  List<Group> list = [];
  @override
  Widget build(BuildContext context) {
    addList();
    return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        height: 112.0,
        child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int position) {
              return Container(
                  width: 110,
                  padding: EdgeInsets.only(left: 15.0),
                  margin: EdgeInsets.only(
                      right: position == list.length - 1 ? 15.0 : 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 110.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(list[position].image)))),
                      Text(
                        list[position].name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ));
            }));
  }

  addList() {
    list.clear();
    list.add(Group("Grupo família",
        "https://www.abrale.org.br/revista-online/wp-content/uploads/2016/11/imagem-familia.jpg"));
    list.add(Group("Grupo escolar de 2016",
        "https://image.freepik.com/vetores-gratis/grupo-de-estudantes-do-ensino-medio-adolescentes-com-escola-mochila-caricatura-carateres_102902-340.jpg"));
    list.add(Group("Pré-carnaval",
        "https://d25pcrmm4mxkj0.cloudfront.net/wp-content/uploads/2018/02/09094008/destacada-carnaval.jpg"));
  }
}
