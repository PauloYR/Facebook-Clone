import 'package:facebook_clone/my-colors.dart';
import 'package:facebook_clone/src/model/PostGroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxPost extends StatefulWidget {
  @override
  _BoxPostState createState() => _BoxPostState();
}

class _BoxPostState extends State<BoxPost> {
  List<PostGroup> list = [];
  @override
  Widget build(BuildContext context) {
    addItens();
    return Container(
      margin: EdgeInsets.only(top: 6.0),
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
                                              child: Row(
                                            children: <Widget>[
                                              Text(list[position].name,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Icon(Icons.arrow_right, color: MyColors.cinza,),
                                              Text(list[position].group,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )),
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
                    padding: EdgeInsets.only(
                      top: 6.0,
                      bottom: 9.0,
                      left: 6.0,
                      right: 6.0
                    ),
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
    list.clear();
    list.add(PostGroup(
        "https://www.queroevoluir.com.br/wp-content/uploads/2016/05/quero-evoluir-espontanea.jpg",
        "Fernanda",
        "https://www.baixarmusica.mus.br/app/wp-content/uploads/2019/08/baixar-musica-pagode-wpv_720x620.jpg",
        "Salvador, Brasil",
        "Padogão 24 horas",
        10,
        20));
    list.add(PostGroup(
        "https://i0.wp.com/amofotolivro.com/wp-content/uploads/2018/10/fotos-de-pessoas-6-1024x683.jpg",
        "João",
        "https://segredosdomundo.r7.com/wp-content/uploads/2019/07/confira-agora-os-25-melhores-animes-que-ja-foram-criados-1.jpg",
        "Fortaleza, Brasil",
        "Animantion",
        13,
        50));

        
  }
}
