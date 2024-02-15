import 'package:attachapp/pages/sort_widgets/bubble_storie.dart';
import 'package:attachapp/pages/sort_widgets/post_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class ProfileIconPage extends StatelessWidget {
  const ProfileIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  print("LogOut");
                },
                icon: Icon(
                  Icons.menu,
                  size: 16,
                ))
          ],
          title: Text(
            'Manish Yadav',
            style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 18)),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: BubbleStorie(
                    name: 'Manish',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Text("20",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 17))),
                      Text('Posts',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 13))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Text("120",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 17))),
                      Text('Following',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 13))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 20),
                  child: Column(
                    children: [
                      Text("12.3k",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 17))),
                      Text(
                        "Followers",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(fontSize: 13)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text('Bio..'),
            Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.image,
                        size: 30,
                      )),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_collection_rounded,
                    size: 30,
                  ))
            ])),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    children: List.generate(18, (index) {
                      return Center(
                        child: Postsprofile(),
                      );
                    }))),
          ],
          // ),
        ));
  }
}
