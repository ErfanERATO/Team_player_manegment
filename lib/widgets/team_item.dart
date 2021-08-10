import 'package:flutter/material.dart';
import '../screens/player_screen.dart';

class TeamItem extends StatefulWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String nation;
  final String homeStadium;

  TeamItem({
    this.id,
    this.name,
    this.imageUrl,
    this.nation,
    this.homeStadium,
  });

  @override
  _TeamItemState createState() => _TeamItemState();
}

class _TeamItemState extends State<TeamItem> {

  void selectTeam(BuildContext context) {
    Navigator.of(context).pushNamed(
      PlayerScreen.routeName,
      arguments: widget.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTeam(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 200,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 6,
                      ),
                      Text("${widget.nation}"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      SizedBox(
                        width: 6,
                      ),
                      Text("${widget.homeStadium}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
