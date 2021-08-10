import 'package:flutter/material.dart';
import '../league_data.dart';
import '../widgets/league_item.dart';

class LeagueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(3),
      children: LEAGUE_DATA
          .map(
            (ligData) => LeagueItem(
              ligData.name,
              ligData.color,
              ligData.id,
              ligData.imageUrl,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        // childAspectRatio: 3 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
    );
  }
}
