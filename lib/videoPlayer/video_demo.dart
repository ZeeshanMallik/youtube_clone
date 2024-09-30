import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VideoScreen extends StatefulWidget {
  String videoURL;
  VideoScreen({super.key, required this.videoURL});


  @override
  VideoPlayerState createState() => VideoPlayerState();

}

class VideoPlayerState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoURL);

    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: VideoPlayer(_controller), height: 300,),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: playVideo,
                child: Text('Play'),
              ),

              ElevatedButton(
                onPressed: pauseVideo,
                child: Text('Pause'),
              ),

            ],
          )
        ],
    );
  }

  void playVideo() {
    setState(() {
      _controller.play();
    });
  }

  void pauseVideo() {
    setState(() {
      _controller.pause();
    });
  }
}
