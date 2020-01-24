import 'package:facebook_clone/src/pages/Home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'src/pages/Grops/index.dart';

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
                      child: Icon(Icons.search, color: Colors.grey),
                      padding: EdgeInsets.only(right: 20),
                    ),
                    SvgPicture.asset(
                      'images/messenger.svg',
                      height: 21.0,
                      width: 21.0,
                      color: Colors.grey,
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
                      Tab(icon: Icon(Icons.supervised_user_circle)),
                      Tab(icon: Icon(Icons.store)),
                      Tab(icon: Icon(Icons.perm_identity)),
                      Tab(icon: Icon(Icons.notifications)),
                      Tab(icon: Icon(Icons.menu)),
                    ]),
              ),
              body: TabBarView(children: [
                Home(),
                Groups(),
                Icon(Icons.store),
                Icon(Icons.perm_identity),
                Icon(Icons.notifications),
                Icon(Icons.menu),
              ]),
            )));
  }
}