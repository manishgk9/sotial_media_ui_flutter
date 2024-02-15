// import 'package:attachapp/pages/sort_widgets/bubble_storie.dart';
import 'package:attachapp/pages/sort_widgets/bubble_storie.dart';
import 'package:attachapp/pages/sort_widgets/posts_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeIconPage extends StatelessWidget {
  const HomeIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    List _storynames = [
      'Manish',
      'Rahul',
      'Rakesh',
      'Virendra',
      'Jitesh',
      'Mukesh'
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
        automaticallyImplyLeading: false,
        title: Text('Attacher',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: .5,
                    wordSpacing: .4))),
      ),
      body: Column(children: [
        Container(
          height: 105,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _storynames.length,
              itemBuilder: (context, index) =>
                  BubbleStorie(name: _storynames[index])),
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>
                    PostsHome(title: 'Manish Yadav')),
          ),
        )
      ]),
    );
  }
}
