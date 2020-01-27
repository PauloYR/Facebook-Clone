import 'package:facebook_clone/my-colors.dart';
import 'package:facebook_clone/src/pages/Groups/index.dart';
import 'package:facebook_clone/src/pages/Home/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: AppBar(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "facebook",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 27.0),
                        ),
                        flex: 1),
                     Padding(
                       padding: EdgeInsets.only(right: 8.0),
                       child:Container(
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColors.cinza
                          ),
                        child: Icon(FontAwesomeIcons.search, size: 19,color: Colors.black,),
                    )),
                    Container(
                      padding: EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: MyColors.cinza
                          ),
                      child:  Icon(FontAwesomeIcons.facebookMessenger,size: 19,color: Colors.black,),
                    )
                  ],
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(FontAwesomeIcons.users,size: 19,)),
                      Tab(icon: Icon(FontAwesomeIcons.store,size: 19,)),
                      Tab(icon: Icon(FontAwesomeIcons.userCircle,)),
                      Tab(icon: Icon(Icons.notifications)),
                      Tab(icon: Icon(Icons.menu)),
                    ]),
              ),
              body: TabBarView(children: [
                Home(),
                Groups(),
                Icon(Icons.store),
                Icon(FontAwesomeIcons.search),
                Icon(Icons.notifications),
                Icon(Icons.menu),
              ]),
            )));
  }
}