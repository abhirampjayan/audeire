import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Screenvideos extends StatelessWidget {
  const Screenvideos({Key? key}) : super(key: key);

  static String vidID1 = 'lYhAAMDQl-Q';
  static String vidID2 = 'WrjfUvmWzko';
  static String vidID3 = 'EFdIE11qnko';
  static String vidID4 = '0LIV0miyxR8';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      appBar: AppBar(
        title: const Text("Videos"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            VideoBlock(myVideoId: vidID1),
            VideoBlock(myVideoId: vidID2),
            VideoBlock(myVideoId: vidID3),
            VideoBlock(myVideoId: vidID4)
          ],
        ),
      ),
    );
  }
}

class VideoBlock extends StatelessWidget {
  const VideoBlock({
    Key? key,
    required this.myVideoId,
  }) : super(key: key);

  final String myVideoId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: myVideoId,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
            liveUIColor: Colors.amber,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: const Text(
              "Learn Sign Language Alphabet",
              textAlign: TextAlign.left,
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
