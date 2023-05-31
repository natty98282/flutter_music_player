import 'package:flutter/material.dart';
import '../models/playlist_model.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    required this.playlist,
  });

  final PlayList playlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                playlist.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${playlist.songs.length} songs',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle,
              color: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
