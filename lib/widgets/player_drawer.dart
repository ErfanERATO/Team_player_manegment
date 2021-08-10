import 'package:first_training/screens/sort_player_screen.dart';
import 'package:flutter/material.dart';

class PlayerDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.orangeAccent,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 210,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/e9/c0/f8/e9c0f84e3d4bbb0a35a7da4c85eacea9.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            // color: Colors.orangeAccent,
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            "Sort Options",
            Icons.sort,
            () {
              Navigator.of(context).pushNamed(SortScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

// child: ListView(
// children: <Widget>[
// UserAccountsDrawerHeader(
// accountName: Text(""),
// accountEmail: Text(""),
// decoration: BoxDecoration(
// image: DecorationImage(
// image: NetworkImage(
// "https://i.pinimg.com/736x/e9/c0/f8/e9c0f84e3d4bbb0a35a7da4c85eacea9.jpg",
// ),
// fit: BoxFit.fill,
// ),
// ),
// )
// ],
// ),
