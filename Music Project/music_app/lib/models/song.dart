// ignore_for_file: unnecessary_this

class Song {
  late String artistName;
  late String trackName;
  late String image;
  late String audio;
  Song(this.artistName, this.trackName, this.image, this.audio);
  Song.fromJSON(Map<String, dynamic> map) {
    artistName = map['artistName'];
    trackName = map['trackName'];
    image = map['artworkUrl30'];
    audio = map['previewUrl'];
  }
  Map<String, dynamic> toJSON() {
    return {
      "artistName": artistName,
      "trackName": trackName,
      "artworkUrl30": image,
      "previewUrl": audio
    };
  }

  @override
  String toString() {
    return "artistName $artistName TrackName $trackName";
  }
}
