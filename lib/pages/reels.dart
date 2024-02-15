import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Reels'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Number of reels
        itemBuilder: (context, index) {
          return ReelCard(); // Reel card for each video
        },
      ),
    );
  }
}

class ReelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:
                MediaQuery.of(context).size.height / 1.2, // Adjust as needed
            color: Colors.grey, // Placeholder for video preview
            // You can use a video player widget for actual video playback
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 8.0),
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(width: 8.0),
                    Icon(Icons.send),
                  ],
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Caption for the video goes here. #Hashtags #Flutter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
