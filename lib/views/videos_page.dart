import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rede_app/components/video_item.dart';
import '../utils/constants.dart';

// import 'package:rede_app/views/navbar_builder.dart';

class VideosPage extends StatefulWidget {
  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  Future<Map<String,dynamic>> _getVideos() async {
  String _search;

    http.Response response;
    if (_search == null || _search.isEmpty)
      response = await http.get(
          'https://www.googleapis.com/youtube/v3/search?part=snippet%2Cid&channelId=${Constants.YOUTUBE_REDEVM_CHANNEL_ID}&order=date&key=${Constants.YOUTUBE_API_KEY}');
    else
      response = await http.get(
          "https://www.googleapis.com/youtube/v3/search?part=snippet%2Cid&channelId=${Constants.YOUTUBE_REDEVM_CHANNEL_ID}&order=date&key=${Constants.YOUTUBE_API_KEY}&pageToken=$_search");

    final Map<String,dynamic> resp = json.decode(response.body);
    // resp["items"].map((item){print(item+"\n");});

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: FutureBuilder(
        future: _getVideos(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return Container(
                  alignment: Alignment.center,
                  color: Theme.of(context).primaryColor,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 5.0,
                  ));
            default:
              if (snapshot.hasError)
                return Container();
              else
                return ListView.builder(itemCount: snapshot.data["items"].length,
                  itemBuilder: (ctx,index){
                    return VideoItem(snapshot.data["items"][index]);
                  });
          }
        },
      ),
    );
  }
}
