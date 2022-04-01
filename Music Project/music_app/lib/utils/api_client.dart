// ignore_for_file: unused_local_variable, invalid_return_type_for_catch_error, dead_code

import 'package:http/http.dart' as http;
import 'dart:convert' as jsonconvert;

import 'package:music_app/models/song.dart';

class APIClient {
  void getSongs(Function successcallBack, Function failcallBack) {
    // Future future;
    const URL = "https://itunes.apple.com/search?term=jack+johnson&limit=25";
    Future<http.Response> future = http.get(Uri.parse(URL));
    future.then((response) {
      String json = response.body;
      Map<String, dynamic> map = jsonconvert.jsonDecode(json);
      List<dynamic> list = map['results'];

      // var list = map['results'];
      //  List<Song> songs =  list.map((element) => Song(element['artistName'], element['trackName'],element['artworkUrl100'], element['previewUrl'])).toList();
      List<Song> songs = list.map((songMap) => Song.fromJSON(songMap)).toList();
      print(songs);
      // return Future.value(songs);
      successcallBack(songs);
      print("Map is $map and Map Type ${map.runtimeType}");
      print("JSON $json");
      print(json.runtimeType);
    }).catchError((err) => failcallBack);
    // return future;
  }
}
