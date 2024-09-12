import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/bottombar.dart';
import 'package:youtube_clone/youtube_appbar.dart';
import 'package:youtube_clone/youtube_list.dart';

main() {
  runApp(HomeScreen());

}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: YoutubeAppbar()),

      //main body
        body: YoutubeList(),


        //bottom bar
        bottomNavigationBar: YoutubeBottomBar(),

      ),
    );
  }
}




