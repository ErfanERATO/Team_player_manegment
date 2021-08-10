import 'package:first_training/screens/favorite_screen.dart';
import 'package:first_training/screens/league_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  Map<String, SliverAppBar> appBarList;
  String _currentAppBar = "mainAppBar";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SliverAppBar mainAppBar = SliverAppBar(
      pinned: true,
      floating: true,
      actions: <Widget>[
        GestureDetector(
          child: Icon(Icons.search),
          onTap: () {
            setState(() {
              _currentAppBar = "searchAppBar";
            });
          },
        ),
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.red, Colors.blue],
          ),
        ),
      ),
      title: Text("Leagues"),
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.category),
            text: "League",
          ),
          Tab(
            icon: Icon(Icons.favorite),
            text: "Favorite",
          ),
        ],
      ),
    );
    SliverAppBar searchAppBar = SliverAppBar(
      pinned: true,
      leading: GestureDetector(
        child: Padding(
          padding: EdgeInsets.only(left: 12,),
          child: Icon(Icons.arrow_back),
        ),
        onTap: () {
          setState(() {
            _currentAppBar = "mainAppBar";
          });
        },
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.red, Colors.blue],
          ),
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search...",
        ),
      ),
    );

    appBarList = <String, SliverAppBar>{
      "mainAppBar": mainAppBar,
      "searchAppBar": searchAppBar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.blue,
                    ],
                  ),
                ),
                accountName: Text(
                  "Your Name",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text(
                  "Your Phone/E_mail",
                  style: TextStyle(fontSize: 13),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Y"),
                ),
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              appBarList[_currentAppBar],
            ];
          },
          body: _currentAppBar == "mainAppBar"
              ? TabBarView(
                  children: <Widget>[
                    LeagueScreen(),
                    FavoriteScreen(),
                  ],
                )
              : Center(
                  child: Text("Search item"),
                ),
        ),
      ),
    );
  }
}
