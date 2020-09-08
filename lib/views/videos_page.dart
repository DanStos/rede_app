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
  String _nextPage;
  Future<Map<String, dynamic>> youtubeData;

  bool _isLoading = true;

  Future<Map<String, dynamic>> _getVideos() async {
    http.Response response;
    if (_nextPage == null || _nextPage.isEmpty)
      response = await http.get(
          'https://www.googleapis.com/youtube/v3/search?part=snippet%2Cid&channelId=${Constants.YOUTUBE_REDEVM_CHANNEL_ID}&order=date&key=${Constants.YOUTUBE_API_KEY}');
    else
      response = await http.get(
          "https://www.googleapis.com/youtube/v3/search?part=snippet%2Cid&channelId=${Constants.YOUTUBE_REDEVM_CHANNEL_ID}&order=date&key=${Constants.YOUTUBE_API_KEY}&pageToken=$_nextPage");

    final Map<String, dynamic> resp = json.decode(response.body);
    _nextPage = resp["nextPageToken"];
    // resp["items"].map((item){print(item+"\n");});

    return resp;
  }

  int _getItemsCount(List data) {
    print(_nextPage);
    if (_nextPage == null || _nextPage.isEmpty) {
      return data.length;
    } else {
      return data.length + 1;
    }
  }

  @override
  void initState() {
    super.initState();
    youtubeData = _getVideos();
    print(youtubeData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: FutureBuilder(
        future: youtubeData,
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
                return ListView.builder(
                    itemCount: snapshot.data["items"].length,
                    itemBuilder: (ctx, index) {
                      if (index >= snapshot.data["items"].length) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _getVideos();
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.add, color: Colors.white),
                              Text(
                                "Carregar Mais...",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        );
                      } else {
                        return VideoItem(
                          key: Key(
                              snapshot.data["items"][index]["id"]["videoId"]),
                          videoData: snapshot.data["items"][index],
                        );
                      }
                    });
          }
        },
      ),
    );
  }
}
