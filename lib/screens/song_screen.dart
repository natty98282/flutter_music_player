import 'package:flutter/material.dart';
import 'package:flutter_music_app/models/song_model.dart';
import 'package:flutter_music_app/widgets/seekbar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioplayer = AudioPlayer();
    Song song = Song.songs[2];

    @override
    void initState() {
      super.initState();

      audioplayer.setAudioSource(
        ConcatenatingAudioSource(
          children: [
            AudioSource.uri(
              Uri.parse('asset:///${song.url}'),
            ),
          ],
        ),
      );
    }

    @override
    void dispose() {
      audioplayer.dispose();
      super.dispose();
    }

    Stream<SeekBarData> get _seekBarDataStream =>
    rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
      audioplayer.post
    )

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            song.coverUrl,
            fit: BoxFit.cover,
          ),
          const _BackgroundFilter(),
        ],
      ),
    );
  }
}

class _BackgroundFilter extends StatelessWidget {
  const _BackgroundFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.0),
            ],
            stops: const [
              0.0,
              0.2,
              0.6
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade200,
              Colors.deepPurple.shade800,
            ],
          ),
        ),
      ),
    );
  }
}
