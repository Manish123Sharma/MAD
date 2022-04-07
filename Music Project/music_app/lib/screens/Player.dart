import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';

class Player extends StatefulWidget {
  Song song;
  Player(this.song);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            child: CircleAvatar(
              backgroundImage: NetworkImage(widget.song.image),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                  Colors.yellow,
                  Colors.orangeAccent,
                  Colors.deepOrangeAccent
                ])),
            height: deviceSize.height / 2,
            width: deviceSize.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_next, size: 30,),
                onPressed: () {},
                ),
            ],
          )
        ],
      ),
    );
  }
}
