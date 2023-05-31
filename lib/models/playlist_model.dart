import 'package:flutter_music_app/models/song_model.dart';

class PlayList {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  PlayList({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<PlayList> playlist = [
    PlayList(
        title: 'Hip-hop R&B mix',
        songs: Song.songs,
        imageUrl: 'assets/images/hiphop.jpg'),
    PlayList(
      title: 'Rock & Roll',
      songs: Song.songs,
      imageUrl: 'assets/images/rock.jpg',
    ),
    PlayList(
      title: 'Country',
      songs: Song.songs,
      imageUrl: 'assets/images/country.jpg',
    )
  ];
}
