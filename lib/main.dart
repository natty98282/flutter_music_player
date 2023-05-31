import 'package:flutter/material.dart';
import 'package:flutter_music_app/screens/home_screen.dart';
import 'package:flutter_music_app/screens/playlist_screen.dart';
import 'package:flutter_music_app/screens/song_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Music Player',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const SongScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomePageScreen()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlayListScreen()),
      ],
    );
  }
}
