import 'package:flutter/material.dart';
import 'package:music_app/list of songs/list_of_songs.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Music',
    home: ListOfSongs(),
  ));
}
