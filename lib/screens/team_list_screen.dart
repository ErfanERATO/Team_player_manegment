import 'package:first_training/widgets/team_item.dart';
import 'package:flutter/material.dart';
import 'package:first_training/league_data.dart';

class TeamListScreen extends StatefulWidget {
  static const routeName = '/league';

  @override
  _TeamListScreenState createState() => _TeamListScreenState();
}

class _TeamListScreenState extends State<TeamListScreen> {

  final nameController = TextEditingController();
  final nationController = TextEditingController();
  final homeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final leagueName = routeArgs['name'];
    final leagueId = routeArgs['id'];
    final leagueTeams = DUMMY_TEAM.where((team) {
      return team.league.contains(leagueId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(leagueName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          // Card(
          //   elevation: 5,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: <Widget>[
          //       TextField(
          //         decoration: InputDecoration(labelText: "Team Name"),
          //         controller: nameController,
          //         // onChanged: (val) => nameInput = val,
          //       ),
          //       TextField(
          //         decoration: InputDecoration(labelText: "Team Nation"),
          //         controller: nationController,
          //         // onChanged: (val) => nationInput = val,
          //       ),
          //       TextField(
          //         decoration: InputDecoration(labelText: "homeStadium"),
          //         controller: homeController,
          //         // onChanged: (val) => homeInput = val,
          //       ),
          //       TextButton(
          //         onPressed: () {
          //           print(nameController.text);
          //           print(nationController.text);
          //           print(homeController.text);
          //         },
          //         child: Text(
          //           "Add new team",
          //           style: TextStyle(color: Colors.black),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return TeamItem(
                  id: leagueTeams[index].id,
                  name: leagueTeams[index].name,
                  imageUrl: leagueTeams[index].imageUrl,
                  nation: leagueTeams[index].nation,
                  homeStadium: leagueTeams[index].homeStadium,
                );
              },
              itemCount: leagueTeams.length,
            ),
          ),
        ],
      ),
    );
  }
}
