import 'package:flutter/material.dart';
import '../screens/team_list_screen.dart';

class LeagueItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;
  final String imageUrl;

  // final String imageUrl;

  LeagueItem(
    this.name,
    this.color,
    this.id,
    this.imageUrl,
  );

  void selectLeague(BuildContext lig) {
    Navigator.of(lig).pushNamed(
      TeamListScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
        'image': imageUrl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectLeague(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(

        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.red,
        //       Colors.blue,
        //     ],
        //   ),
        // ),
        padding: const EdgeInsets.all(1),
        child: Image.network(imageUrl, fit: BoxFit.cover),
        // child: Text(name),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       color.withOpacity(0.7),
        //       color,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        //   borderRadius: BorderRadius.circular(15),
        // ),
      ),
    );
  }
}
