class Song {
  final String title;
  final String decription;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.decription,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
        title: 'Glass',
        decription: 'Glass',
        url: 'assets/music/glass.mp3',
        coverUrl: 'assets/images/glass.jpg'),
    Song(
        title: 'Illusions',
        decription: 'Illusions',
        url: 'assets/music/illusions.mp3',
        coverUrl: 'assets/images/illusions.jpg'),
    Song(
        title: 'Pray',
        decription: 'Pray',
        url: 'assets/music/pray.mp3',
        coverUrl: 'assets/images/pray.jpg'),
  ];
}
