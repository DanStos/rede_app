import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:rede_app/utils/constants.dart';

class VideoPlayer extends StatefulWidget {
  final dynamic videoData;

  VideoPlayer({
    Key key,
    this.videoData,
  }) : super(key: key);
  @override
  VideoPlayerState createState() => VideoPlayerState();
}

class VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.videoData["title"],
        centerTitle: true,
      ),
      body: FlutterYoutube.playYoutubeVideoById(
        // appBarVisible: true,
        // appBarColor: Colors.black,
        apiKey: Constants.YOUTUBE_API_KEY,
        videoId: widget.videoData['id']['videoId'],
      ),
    );
  }
}
