import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YouTubeShortsPlayer(),
    );
  }
}

class YouTubeShortsPlayer extends StatefulWidget {
  @override
  _YouTubeShortsPlayerState createState() => _YouTubeShortsPlayerState();
}

class _YouTubeShortsPlayerState extends State<YouTubeShortsPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Extract the video ID from the YouTube Shorts URL
    const videoUrl = 'https://www.youtube.com/shorts/video_id';
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    // Initialize the YouTube Player controller
    _controller = YoutubePlayerController(
      initialVideoId: videoId ?? 'z-BFlfvSl7E', // Replace with the video ID of the Shorts
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: false,
        forceHD: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Shorts Player'),
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        builder: (context, player) {
          return Column(
            children: [
              // Display the YouTube player
              player,
            ],
          );
        },
      ),
    );
  }
}
