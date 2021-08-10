import 'package:first_training/league_data.dart';
import 'package:first_training/widgets/new_player_list(new_transaction).dart';
import 'package:first_training/widgets/player_list(transaction_list).dart';
import 'package:flutter/material.dart';
import 'package:first_training/models/player(transaction).dart';
import 'package:first_training/widgets/player_drawer.dart';
class PlayerScreen extends StatefulWidget {
  // String nameInput;
  // String postInput;
  // String ageInput;
  // String numberInput;
  static const routeName = "/player_detail";

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final List<TeamPlayer> _userTeamPlayer = [
    TeamPlayer(
      id: "p1",
      name: "Leo Messi",
      post: "Winger",
      age: 34,
      number: 10,
    ),
    TeamPlayer(
      id: "p2",
      name: "Neymar JR",
      post: "Winger",
      age: 29,
      number: 11,
    ),
    TeamPlayer(
      id: "p3",
      name: "Luis suarez",
      post: "Center Attacker",
      age: 34,
      number: 9,
    ),
    TeamPlayer(
      id: "p4",
      name: "Xavi Hernandez",
      post: "Midfilder",
      age: 39,
      number: 6,
    ),
    TeamPlayer(
      id: "p5",
      name: "Andreas Iniesta",
      post: "Midfilder",
      age: 37,
      number: 8,
    ),
    TeamPlayer(
      id: "p6",
      name: "Sergio Busquets",
      post: "Midfilder",
      age: 33,
      number: 16,
    ),
    TeamPlayer(
      id: "p7",
      name: "jordi Alba",
      post: "Left Back",
      age: 31,
      number: 28,
    ),
    TeamPlayer(
      id: "p8",
      name: "Gerard Pique",
      post: "centerback",
      age: 33,
      number: 3,
    ),
    TeamPlayer(
      id: "p9",
      name: "Carles puyol",
      post: "centerback",
      age: 43,
      number: 5,
    ),
    TeamPlayer(
      id: "p10",
      name: "Dani Alves",
      post: "centerback",
      age: 37,
      number: 2,
    ),
    TeamPlayer(
      id: "p11",
      name: "Victor Valdes",
      post: "Goalkeeper",
      age: 39,
      number: 1,
    ),
  ];

  void _addNewPlayer(
      {String name, int number, int age, String post, String id}) {
    final teamPlayer = TeamPlayer(
      name: name,
      number: number,
      age: age,
      post: post,
      id: id,
    );
    setState(() {
      print(teamPlayer);
      _userTeamPlayer.add(teamPlayer);
    });
    _userTeamPlayer.sort((a , b) => a.age.compareTo(b.age));
    // _userTeamPlayer.sort((a , b) => a.name.compareTo(b.name));
    // _userTeamPlayer.sort((a , b) => a.number.compareTo(b.number));
    // _userTeamPlayer.sort((a , b) => a.post.compareTo(b.post));
  }

  void _startAddNewPlayer(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewPlayerList(_addNewPlayer),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  void _deletePlayer(String id) {
    setState(() {
      _userTeamPlayer.removeWhere((pl) {
        return pl.id == id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final playerId = ModalRoute.of(context).settings.arguments as String;
    final selectTeam = DUMMY_TEAM.firstWhere((team) => team.id == playerId);
    return Scaffold(
      drawer: PlayerDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewPlayer(context),
          ),
        ],
        title: Text("${selectTeam.name}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              child: Card(
                color: Colors.amber,
                child: Image.network(
                  'https://i.pinimg.com/originals/b3/c3/79/b3c379adce1d21face51c84867066053.jpg',
                  fit: BoxFit.fill,
                ),
                elevation: 5,
              ),
            ),
            PlayerList(_userTeamPlayer, _deletePlayer),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.add),
        onPressed: () => _startAddNewPlayer(context),
      ),
    );
  }
}
