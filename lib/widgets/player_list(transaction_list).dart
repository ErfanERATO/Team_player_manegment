import '../models/player(transaction).dart';
import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final List<TeamPlayer> teamPlayer;
  final Function deletePlayer;

  PlayerList(this.teamPlayer, this.deletePlayer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: teamPlayer.map((tp) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            radius: 30,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: FittedBox(
                child: Text(
                  tp.number.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: Text(tp.name),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Post : " + tp.post),
              Text("Age : " + tp.age.toString()),
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () => deletePlayer(tp.id),
          ),
        );
      }).toList(),
    );
  }
}

//____________________________________________________________________________
// class PlayerList extends StatelessWidget {
//   final List<TeamPlayer> teamPlayer;
//
//   PlayerList(this.teamPlayer);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: teamPlayer.map((tp) {
//         return Card(
//           child: Row(
//             children: <Widget>[
//               Container(
//                 child: Text(
//                   tp.number.toString(),
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                     color: Colors.orangeAccent,
//                   ),
//                 ),
//                 margin: EdgeInsets.symmetric(
//                   vertical: 15,
//                   horizontal: 15,
//                 ),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.orangeAccent,
//                     width: 2,
//                   ),
//                 ),
//                 padding: EdgeInsets.all(10),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     tp.name,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17,
//                     ),
//                   ),
//                   Text(
//                     tp.post,
//                     style: TextStyle(
//                       color: Colors.blueGrey,
//                     ),
//                   ),
//                   Text(
//                     'Age=' + tp.age.toString(),
//                     style: TextStyle(color: Colors.blueGrey),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       }).toList(),
//     );
//   }
// }
