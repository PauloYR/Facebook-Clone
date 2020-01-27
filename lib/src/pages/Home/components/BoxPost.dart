import 'package:facebook_clone/src/model/Post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxPost extends StatelessWidget {
  List<Post> list = [];
  @override
  Widget build(BuildContext context) {
    addItens();
    return Container(
      child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, position) {
            return Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(bottom: 6.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(50),
                                child: Image.network(
                                  list[position].profile,
                                  height: 40.0,
                                  width: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Text(list[position].name,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10.0),
                                              child: SvgPicture.asset(
                                                "images/more.svg",
                                                height: 20.0,
                                                width: 20.0,
                                                color: Colors.grey,
                                              ))
                                        ],
                                      ),
                                      Text(list[position].location)
                                    ],
                                  ))),
                        ],
                      )),
                  Image.network(
                    list[position].image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "images/heart.svg",
                                height: 20.0,
                                width: 20.0,
                                color: Colors.red,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(list[position].likes.toString()),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text(list[position].comments.toString() +
                                  " Comentários"))
                        ],
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Center(
                            child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: SvgPicture.asset(
                                  "images/like.svg",
                                  height: 15.0,
                                  width: 15.0,
                                )),
                            Text("Curtir"),
                          ],
                        )),
                        Center(
                            child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: SvgPicture.asset(
                                  "images/comment.svg",
                                  height: 15.0,
                                  width: 15.0,
                                )),
                            Text("Comentar"),
                          ],
                        )),
                        Center(
                            child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: SvgPicture.asset(
                                  "images/share.svg",
                                  height: 15.0,
                                  width: 15.0,
                                )),
                            Text("Compartilhar"),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 7.0,
                  )
                ],
              ),
            );
          }),
    );
  }

  void addItens() {
    list.add(Post(
        "https://avatars3.githubusercontent.com/u/27500522?s=400&u=b15d1074d9b00117dfc86ab6e24f74f456bce1da&v=4",
        "Paulo Iury",
        "https://img.freepik.com/fotos-gratis/arvore-3d-contra-um-ceu-do-por-do-sol_1048-9754.jpg?size=626&ext=jpg",
        "Fortaleza, Brasil",
        10,
        20));
    list.add(Post(
        "https://i0.wp.com/www.multarte.com.br/wp-content/uploads/2018/01/poses-tumblr-na-cama.jpg?resize=564%2C612&ssl=1",
        "Carlos",
        "https://br.jetss.com/wp-content/uploads/2019/05/fot%C3%B3grafos_de_paisagens_ty.jpg",
        "Fortaleza, Brasil",
        13,
        50));
  }
}
