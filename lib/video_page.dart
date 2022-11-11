import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoPlayer();
}

class _VideoPlayer extends State<Video> {
  final videoURL = "https://www.youtube.com/watch?v=Iwyvozckjak";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FitMe",
          style: TextStyle(
              color: Colors.black, fontSize: 23.5, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            /* onReady: () => debugPrint('Ready'),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                  isExpanded: true,
                  colors: const ProgressBarColors(
                      playedColor: Color.fromARGB(255, 255, 47, 175),
                      handleColor: Color.fromARGB(255, 255, 47, 175))),
              const PlaybackSpeedButton()
            ], */
          )
        ],
      ),
    );
  }
}
