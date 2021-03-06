import 'package:flutter/material.dart';
import 'package:whatsappclone/StoryView.dart';

class StatusTile extends StatefulWidget {
  @override
  _StatusTileState createState() => _StatusTileState();
}

class _StatusTileState extends State<StatusTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(
          "Lightning McQueen",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          child: Image.network(
            'https://pickaface.net/gallery/avatar/investmentsiao5575c4d899b7a.png',
            height: 100,
            width: 100,
          ),
          padding: EdgeInsets.only(top: 10, bottom: 10),
        ),
        subtitle: Padding(
          child: Text(
            "a new message!",
            style: TextStyle(fontSize: 15),
          ),
          padding: EdgeInsets.only(top: 7),
        ),
        trailing: Text("3:00 PM"),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => StoryPage()));
        },
      ),
    );
    ;
  }
}
