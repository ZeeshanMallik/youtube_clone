import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/bottombar.dart';
import 'package:youtube_clone/youtube_Short.dart';
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
        body: Column(
          children: [
            //height should not be hardcoded,try other options too
            SizedBox(height: 500, child: Expanded(child: YoutubeShortList())),
            Expanded(child: YoutubeList()),
          ]
        ),


        //bottom bar
        bottomNavigationBar: YoutubeBottomBar(),

      ),
    );
  }
}




