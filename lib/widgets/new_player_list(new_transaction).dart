import 'package:flutter/material.dart';

class NewPlayerList extends StatefulWidget {
  final Function addTeamMember;

  NewPlayerList(this.addTeamMember);

  @override
  _NewPlayerListState createState() => _NewPlayerListState();
}

class _NewPlayerListState extends State<NewPlayerList> {
  final nameController = TextEditingController();

  final postController = TextEditingController();

  final ageController = TextEditingController();

  final numberController = TextEditingController();

  void submitData() {
    final enteredName = nameController.text;
    final enteredPost = postController.text;
    final enteredAge = int.parse(ageController.text);
    final enteredNumber = int.parse(numberController.text);

    if (enteredName.isEmpty || enteredNumber <= 0 || enteredAge <= 0 || enteredPost.isEmpty){
      return;
    }

    widget.addTeamMember(
      name: enteredName,
      number: enteredNumber,
      age: enteredAge,
      post: enteredPost,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Palyer Name"),
              controller: nameController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   nameInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Palyer Post"),
              controller: postController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   postInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Palyer age"),
              controller: ageController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   ageInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Palyer Number"),
              controller: numberController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   numberInput = val;
              // },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: submitData,
              child: Text("Add Player"),
              textColor: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
//__________________________________________________________________________________________
// import 'package:flutter/material.dart';
//
// class NewPlayerList extends StatefulWidget {
//   final Function addTeamMember;
//
//   NewPlayerList(this.addTeamMember);
//
//   @override
//   _NewPlayerListState createState() => _NewPlayerListState();
// }
//
// class _NewPlayerListState extends State<NewPlayerList> {
//   final nameController = TextEditingController();
//
//   final postController = TextEditingController();
//
//   final ageController = TextEditingController();
//
//   final numberController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(labelText: "Palyer Name"),
//               controller: nameController,
//               // onChanged: (val) {
//               //   nameInput = val;
//               // },
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: "Palyer Post"),
//               controller: postController,
//               // onChanged: (val) {
//               //   postInput = val;
//               // },
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: "Palyer age"),
//               controller: ageController,
//               keyboardType: TextInputType.number,
//               // onChanged: (val) {
//               //   ageInput = val;
//               // },
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: "Palyer Number"),
//               controller: numberController,
//               keyboardType: TextInputType.number,
//               // onChanged: (val) {
//               //   numberInput = val;
//               // },
//             ),
//             // ignore: deprecated_member_use
//             FlatButton(
//               onPressed: () {
//                 widget.addTeamMember(
//                   name: nameController.text,
//                   number: int.parse(numberController.text),
//                   age: int.parse(ageController.text),
//                   post: postController.text,
//                 );
//               },
//               child: Text("Add Player"),
//               textColor: Colors.orangeAccent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

