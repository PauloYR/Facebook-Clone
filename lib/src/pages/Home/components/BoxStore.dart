import 'package:facebook_clone/src/model/Store.dart';
import 'package:flutter/material.dart';

class BoxStore extends StatelessWidget {
  List<Store> list = [];
  @override
  Widget build(BuildContext context) {
    addList();
    return Container(
      margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
      height: 160.0,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, position) {
            return Container(
              child: Padding(
                padding: EdgeInsets.only(
                    right: 10.0, left: position == 0 ? 10.0 : 0.0),
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
        "Adicionar ao story",
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
