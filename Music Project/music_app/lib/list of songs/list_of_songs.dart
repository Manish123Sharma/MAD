// ignore_for_file: unused_element, prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/utils/api_client.dart';

import '../models/song.dart';

class ListOfSongs extends StatefulWidget {
  const ListOfSongs({Key? key}) : super(key: key);

  @override
  State<ListOfSongs> createState() => _ListOfSongsState();
}

class _ListOfSongsState extends State<ListOfSongs> {
  AudioPlayer audioPlayer = AudioPlayer();
  List<Song> songs = [];
  dynamic error;
  @override
  void initState() {
    // TODO: implement initState
    APIClient client = APIClient();
    client.getSongs(getSongList, getSongError);
  }

  getSongList(List<Song> songs) {
    this.songs = songs;
  }

  getSongError(dynamic error) {
    this.error = error;
  }

  Center _showLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView _printSong() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, int index) {
        return ListTile(
          leading: Image.network(songs[index].image),
          title: Text(songs[index].trackName),
          subtitle: Text(songs[index].artistName),
          trailing: IconButton(
            onPressed: ()async {
             await audioPlayer .play(songs[index].audio);
            },
            icon:Icon(Icons.play_arrow,
            size: 20,)
          ),
        );
      },
      itemCount: songs.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Songs"),
      ),
      body: Container(
        child: (songs.length==0)?_showLoading():_printSong(),
      ),
    );
  }
}
