import 'package:facebook_clone/model/Post.dart';
import 'package:facebook_clone/model/Store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class PostFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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

class BoxStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.videocam, color: Colors.red, size: 16.0),
              Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Ao vivo",
                      style: new TextStyle(fontWeight: FontWeight.bold)))
            ]),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.photo_library,
                  color: Colors.green,
                  size: 16.0,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("Fotos",
                        style: new TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(
                  Icons.my_location,
                  color: Colors.pink,
                  size: 16.0,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("Localização",
                        style: new TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
          ],
        ));
  }
}

class BoxStore extends StatelessWidget {
  List<Store> list = [];
  @override
  Widget build(BuildContext context) {
    addList();
    return Container(
      margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
      height: 160.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, position) {    
           return Container(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0, left: position == 0 ? 10.0 : 0.0),
                child: Container(
                  width: 100.0,
                  height: 160.0,
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(color: Colors.blue),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          list[position].profile)))),
                          Text(list[position].name,
                              style: TextStyle(color: Colors.white))
                        ],
                      )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(list[position].image))),
                ),
              ),
            );
          }),
    );
  }

  void addList() {
    list.add(Store(
        "Adicione seu Story",
        "https://img.freepik.com/fotos-gratis/arvore-3d-contra-um-ceu-do-por-do-sol_1048-9754.jpg?size=626&ext=jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7s818WCafFEXmF7hEz1WVPKD_OKJp9WzC0_OMY9NdRjmxZheZTA&s"));
    list.add(Store(
        "Ana",
        "https://images.madeiramadeira.com.br/product/images/99157190-adesivo-parede-paisagem-estrada-viagem-natureza-gg567prdfs89loibybfcc-179-1-800x729.jpg",
        "https://i.pinimg.com/736x/49/4a/e8/494ae8ac6602cc51511c103dca8260d2.jpg"));
    list.add(Store(
        "Jorge",
        "https://www.infoescola.com/wp-content/uploads/2019/10/paisagem-ouro-preto-1008049370.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo9WCtkjH6D-Wv-VOuJKi9LQV9jDPigFDX7H9iU69a2haOZFED&s"));
    list.add(Store(
        "Matheus",
        "https://img.elo7.com.br/product/zoom/18134D3/quadro-decorativo-paisagem-onda-1-peca-paisagem.jpg",
        "https://uploads.spiritfanfiction.com/fanfics/capitulos/201510/fanfiction-shawn-mendes-o-garoto-do-tumblr-4638080-091020151229.jpg"));
    list.add(Store(
        "Lucas",
        "https://www.estudokids.com.br/wp-content/uploads/2015/03/paisagem-geografia-historia-e-tipos-1200x675.jpg",
        "https://66.media.tumblr.com/8a8325900d734b6839d177eaa47e3d90/tumblr_pacvueOkQY1tn6f9wo1_400.jpg"));
    list.add(Store(
        "Creusa",
        "https://img.elo7.com.br/product/zoom/18134D3/quadro-decorativo-paisagem-onda-1-peca-paisagem.jpg",
        "https://dudacaetano.com/wp-content/uploads/2019/01/foto-tumblr-girassol.jpg"));
    list.add(Store(
        "Libertina",
        "https://img.elo7.com.br/product/zoom/18134D3/quadro-decorativo-paisagem-onda-1-peca-paisagem.jpg",
        "https://i.pinimg.com/originals/b2/ac/b6/b2acb62e2b88f8f427dd0be9f9e61a28.jpg"));
    list.add(Store(
        "Joana",
        "https://img.elo7.com.br/product/zoom/18134D3/quadro-decorativo-paisagem-onda-1-peca-paisagem.jpg",
        "https://lh5.googleusercontent.com/proxy/MxlRdaFwb-0-swFPHVnV9IW0eyV_VQ_dm_Pj0FPwabTxxS0EDc-1FMTmFhf1EEmsbaMKC242Axvmd5HPBusSx45I8NFHVW6bHZfWEYfA5Vl3BA2hJN1e4IG68dBcS9ZoaRgdbnAafTdBWiAyA8VPPHhYlH-l0hjp1QKvaTTDnszt"));
  }
}

class BoxPost extends StatelessWidget {
  List<Post> list = [];
  @override
  Widget build(BuildContext context) {
    addItens();
    return Container(
      margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
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
                    child:Row(
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
                        ),)),
                        Expanded(
                          child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Expanded(child: 
                              Text(list[position].name, textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold))),
                              Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child:SvgPicture.asset("images/more.svg", height: 20.0,width: 20.0,color: Colors.grey,))
                            ],),
                            Text(list[position].location)
                          ],
                        ))),
                    ],)),
                  Image.network(list[position].image,fit: BoxFit.cover,width: double.infinity,),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0,left: 10.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Row(children: <Widget>[
                      SvgPicture.asset("images/heart.svg", height: 20.0,width: 20.0,color: Colors.red,),
                      Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(list[position].likes.toString()),
                    ),],),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child:Text(list[position].comments.toString() + " Comentários"))
                  ],)),
                  Divider(thickness: 1,),
                  Padding(padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Center(
                          child:Row(
                          children: <Widget>[
                            Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child:SvgPicture.asset("images/like.svg",height: 15.0,width: 15.0,)),
                            Text("Curtir"),
                          ],
                        )),
                        Center(
                          child:Row(
                          children: <Widget>[
                         Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child:SvgPicture.asset("images/comment.svg",height: 15.0,width: 15.0,)),   
                         Text("Comentar"),
                          ],
                        )),
                         Center(
                          child:Row(
                          children: <Widget>[
                         Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child:SvgPicture.asset("images/share.svg",height: 15.0,width: 15.0,)),   
                         Text("Compartilhar"),
                          ],
                        ))
                      ],
                    ),),
                    Divider(color: Colors.grey, thickness: 7.0,)
                ],
              ),
            );
          }), 
    );
  }

  void addItens(){
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
